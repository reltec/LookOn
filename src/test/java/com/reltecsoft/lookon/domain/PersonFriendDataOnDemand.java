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

import com.reltecsoft.lookon.repository.PersonFriendRepository;
import com.reltecsoft.lookon.service.PersonFriendService;
import com.reltecsoft.lookon.service.PersonService;

@Component
@RooDataOnDemand(entity = PersonFriend.class)
public class PersonFriendDataOnDemand {

	private Random rnd = new SecureRandom();

	private List<PersonFriend> data;

	@Autowired
	PersonDataOnDemand personDataOnDemand;

	@Autowired
	DtPersonTypeDataOnDemand dtPersonTypeDataOnDemand;

	@Autowired
	PersonFriendService personFriendService;

	@Autowired
	PersonService personService;

	@Autowired
	PersonFriendRepository personFriendRepository;

	public PersonFriend getNewTransientPersonFriend(int index) {
		PersonFriend obj = new PersonFriend();
		setFriendId(obj, index);
		setPersonId(obj, index);
		setTypeId(obj, index);
		setEmbeddedIdClass(obj, index);
		return obj;
	}

	public void setEmbeddedIdClass(PersonFriend obj, int index) {
		// Long personId = new Integer(index).longValue();
		// Long friendId = new Integer(index).longValue();
		// Integer typeId = new Integer(index);

		Long personId = obj.getPersonId().getId();
		Long friendId = obj.getFriendId().getId();
		Integer typeId = obj.getTypeId().getId();

		PersonFriendPK embeddedIdClass = new PersonFriendPK(personId, friendId,
				typeId);
		obj.setId(embeddedIdClass);
	}

	public void setFriendId(PersonFriend obj, int index) {
		Person friendId = personDataOnDemand.getNewTransientPerson(index);
		personService.savePerson(friendId);
		obj.setFriendId(friendId);
	}

	public void setPersonId(PersonFriend obj, int index) {
		Person personId = personDataOnDemand.getNewTransientPerson(index);
		personService.savePerson(personId);
		obj.setPersonId(personId);
	}

	public void setTypeId(PersonFriend obj, int index) {
		DtPersonType typeId = dtPersonTypeDataOnDemand.getRandomDtPersonType();
		obj.setTypeId(typeId);
	}

	public PersonFriend getSpecificPersonFriend(int index) {
		init();
		if (index < 0) {
			index = 0;
		}
		if (index > (data.size() - 1)) {
			index = data.size() - 1;
		}
		PersonFriend obj = data.get(index);
		PersonFriendPK id = obj.getId();
		return personFriendService.findPersonFriend(id);
	}

	public PersonFriend getRandomPersonFriend() {
		init();
		PersonFriend obj = data.get(rnd.nextInt(data.size()));
		PersonFriendPK id = obj.getId();
		return personFriendService.findPersonFriend(id);
	}

	public boolean modifyPersonFriend(PersonFriend obj) {
		return false;
	}

	public void init() {
		int from = 0;
		int to = 10;
		data = personFriendService.findPersonFriendEntries(from, to);
		if (data == null) {
			throw new IllegalStateException(
					"Find entries implementation for 'PersonFriend' illegally returned null");
		}
		if (!data.isEmpty()) {
			return;
		}

		data = new ArrayList<PersonFriend>();
		for (int i = 0; i < 10; i++) {
			PersonFriend obj = getNewTransientPersonFriend(i);
			try {
				personFriendService.savePersonFriend(obj);
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
			personFriendRepository.flush();
			data.add(obj);
		}
	}
}
