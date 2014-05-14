package com.reltecsoft.lookon.domain;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.roo.addon.dod.RooDataOnDemand;
import org.springframework.stereotype.Component;

import com.reltecsoft.lookon.repository.CommunityPersonRepository;
import com.reltecsoft.lookon.service.CommunityPersonService;
import com.reltecsoft.lookon.service.CommunityService;
import com.reltecsoft.lookon.service.PersonService;

@Component
@RooDataOnDemand(entity = CommunityPerson.class)
public class CommunityPersonDataOnDemand {

	private Random rnd = new SecureRandom();

	private List<CommunityPerson> data;

	@Autowired
	CommunityDataOnDemand communityDataOnDemand;

	@Autowired
	PersonDataOnDemand personDataOnDemand;

	@Autowired
	DtCommunityRoleDataOnDemand dtCommunityRoleDataOnDemand;

	@Autowired
	CommunityPersonService communityPersonService;

	@Autowired
	CommunityService communityService;

	@Autowired
	PersonService personService;

	@Autowired
	CommunityPersonRepository communityPersonRepository;

	public CommunityPerson getNewTransientCommunityPerson(int index) {
		CommunityPerson obj = new CommunityPerson();
		setCommunityId(obj, index);
		setPersonId(obj, index);
		setRoleId(obj, index);
		setEmbeddedIdClass(obj, index);
		return obj;
	}

	public void setEmbeddedIdClass(CommunityPerson obj, int index) {
		// Long communityId = new Integer(index).longValue();
		// Long personId = new Integer(index).longValue();
		// Integer roleId = new Integer(index);

		Long communityId = obj.getCommunityId().getId();
		Long personId = obj.getPersonId().getId();
		Integer roleId = obj.getRoleId().getId();

		CommunityPersonPK embeddedIdClass = new CommunityPersonPK(communityId,
				personId, roleId);
		obj.setId(embeddedIdClass);
	}

	public void setCommunityId(CommunityPerson obj, int index) {
		Community communityId = communityDataOnDemand
				.getNewTransientCommunity(index);
		communityService.saveCommunity(communityId);
		obj.setCommunityId(communityId);
	}

	public void setPersonId(CommunityPerson obj, int index) {
		Person personId = personDataOnDemand.getNewTransientPerson(index);
		personService.savePerson(personId);
		obj.setPersonId(personId);
	}

	public void setRoleId(CommunityPerson obj, int index) {
		DtCommunityRole roleId = dtCommunityRoleDataOnDemand
				.getRandomDtCommunityRole();
		obj.setRoleId(roleId);
	}

	public CommunityPerson getSpecificCommunityPerson(int index) {
		init();
		if (index < 0) {
			index = 0;
		}
		if (index > (data.size() - 1)) {
			index = data.size() - 1;
		}
		CommunityPerson obj = data.get(index);
		CommunityPersonPK id = obj.getId();
		return communityPersonService.findCommunityPerson(id);
	}

	public CommunityPerson getRandomCommunityPerson() {
		init();
		CommunityPerson obj = data.get(rnd.nextInt(data.size()));
		CommunityPersonPK id = obj.getId();
		return communityPersonService.findCommunityPerson(id);
	}

	public boolean modifyCommunityPerson(CommunityPerson obj) {
		return false;
	}

	public void init() {
		int from = 0;
		int to = 10;
		data = communityPersonService.findCommunityPersonEntries(from, to);
		if (data == null) {
			throw new IllegalStateException(
					"Find entries implementation for 'CommunityPerson' illegally returned null");
		}
		if (!data.isEmpty()) {
			return;
		}

		data = new ArrayList<CommunityPerson>();
		for (int i = 0; i < 10; i++) {
			CommunityPerson obj = getNewTransientCommunityPerson(i);
			try {
				communityPersonService.saveCommunityPerson(obj);
			} catch (final ConstraintViolationException e) {
				final StringBuilder msg = new StringBuilder();
				for (Iterator<ConstraintViolation<?>> iter = e
						.getConstraintViolations().iterator(); iter.hasNext();) {
					final ConstraintViolation<?> cv = iter.next();
					msg.append("[")
							.append(cv.getRootBean().getClass().getName())
							.append(".").append(cv.getPropertyPath())
							.append(": ").append(cv.getMessage())
							.append(" (invalid value = ")
							.append(cv.getInvalidValue()).append(")")
							.append("]");
				}
				throw new IllegalStateException(msg.toString(), e);
			}
			communityPersonRepository.flush();
			data.add(obj);
		}
	}
}
