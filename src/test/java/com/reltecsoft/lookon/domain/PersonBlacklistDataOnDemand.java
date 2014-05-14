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

import com.reltecsoft.lookon.repository.PersonBlacklistRepository;
import com.reltecsoft.lookon.service.PersonBlacklistService;
import com.reltecsoft.lookon.service.PersonService;

@Component
@RooDataOnDemand(entity = PersonBlacklist.class)
public class PersonBlacklistDataOnDemand {

	private Random rnd = new SecureRandom();

	private List<PersonBlacklist> data;

	@Autowired
	PersonDataOnDemand personDataOnDemand;

	@Autowired
	DtPersonTypeDataOnDemand dtPersonTypeDataOnDemand;

	@Autowired
	PersonBlacklistService personBlacklistService;

	@Autowired
	PersonService personService;

	@Autowired
	PersonBlacklistRepository personBlacklistRepository;

	public PersonBlacklist getNewTransientPersonBlacklist(int index) {
		PersonBlacklist obj = new PersonBlacklist();
		setBlacklistId(obj, index);
		setPersonId(obj, index);
		setTypeId(obj, index);
		setEmbeddedIdClass(obj, index);
		return obj;
	}

	public void setEmbeddedIdClass(PersonBlacklist obj, int index) {
		// Long personId = new Integer(index).longValue();
		// Long blacklistId = new Integer(index).longValue();
		// Integer typeId = new Integer(index);

		Long personId = obj.getPersonId().getId();
		Long blacklistId = obj.getBlacklistId().getId();
		Integer typeId = obj.getTypeId().getId();

		PersonBlacklistPK embeddedIdClass = new PersonBlacklistPK(personId,
				blacklistId, typeId);
		obj.setId(embeddedIdClass);
	}

	public void setBlacklistId(PersonBlacklist obj, int index) {
		Person blacklistId = personDataOnDemand.getNewTransientPerson(index);
		personService.savePerson(blacklistId);
		obj.setBlacklistId(blacklistId);
	}

	public void setPersonId(PersonBlacklist obj, int index) {
		Person personId = personDataOnDemand.getNewTransientPerson(index);
		personService.savePerson(personId);
		obj.setPersonId(personId);
	}

	public void setTypeId(PersonBlacklist obj, int index) {
		DtPersonType typeId = dtPersonTypeDataOnDemand.getRandomDtPersonType();
		obj.setTypeId(typeId);
	}

	public PersonBlacklist getSpecificPersonBlacklist(int index) {
		init();
		if (index < 0) {
			index = 0;
		}
		if (index > (data.size() - 1)) {
			index = data.size() - 1;
		}
		PersonBlacklist obj = data.get(index);
		PersonBlacklistPK id = obj.getId();
		return personBlacklistService.findPersonBlacklist(id);
	}

	public PersonBlacklist getRandomPersonBlacklist() {
		init();
		PersonBlacklist obj = data.get(rnd.nextInt(data.size()));
		PersonBlacklistPK id = obj.getId();
		return personBlacklistService.findPersonBlacklist(id);
	}

	public boolean modifyPersonBlacklist(PersonBlacklist obj) {
		return false;
	}

	public void init() {
		int from = 0;
		int to = 10;
		data = personBlacklistService.findPersonBlacklistEntries(from, to);
		if (data == null) {
			throw new IllegalStateException(
					"Find entries implementation for 'PersonBlacklist' illegally returned null");
		}
		if (!data.isEmpty()) {
			return;
		}

		data = new ArrayList<PersonBlacklist>();
		for (int i = 0; i < 10; i++) {
			PersonBlacklist obj = getNewTransientPersonBlacklist(i);
			try {
				personBlacklistService.savePersonBlacklist(obj);
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
			personBlacklistRepository.flush();
			data.add(obj);
		}
	}
}
