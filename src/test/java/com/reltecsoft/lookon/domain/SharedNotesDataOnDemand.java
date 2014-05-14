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

import com.reltecsoft.lookon.repository.SharedNotesRepository;
import com.reltecsoft.lookon.service.NotesService;
import com.reltecsoft.lookon.service.PersonService;
import com.reltecsoft.lookon.service.SharedNotesService;

@Component
@RooDataOnDemand(entity = SharedNotes.class)
public class SharedNotesDataOnDemand {

	private Random rnd = new SecureRandom();

	private List<SharedNotes> data;

	@Autowired
	NotesDataOnDemand notesDataOnDemand;

	@Autowired
	PersonDataOnDemand personDataOnDemand;

	@Autowired
	DtNotesRoleDataOnDemand dtNotesRoleDataOnDemand;

	@Autowired
	SharedNotesService sharedNotesService;

	@Autowired
	NotesService notesService;

	@Autowired
	PersonService personService;

	@Autowired
	SharedNotesRepository sharedNotesRepository;

	public SharedNotes getNewTransientSharedNotes(int index) {
		SharedNotes obj = new SharedNotes();
		setNoteId(obj, index);
		setPersonId(obj, index);
		setRoleId(obj, index);
		setEmbeddedIdClass(obj, index);
		return obj;
	}

	public void setEmbeddedIdClass(SharedNotes obj, int index) {
		// Long personId = new Integer(index).longValue();
		// Long noteId = new Integer(index).longValue();
		// Integer roleId = new Integer(index);

		Long personId = obj.getPersonId().getId();
		Long noteId = obj.getNoteId().getId();
		Integer roleId = obj.getRoleId().getId();

		SharedNotesPK embeddedIdClass = new SharedNotesPK(personId, noteId,
				roleId);
		obj.setId(embeddedIdClass);
	}

	public void setNoteId(SharedNotes obj, int index) {
		Notes noteId = notesDataOnDemand.getNewTransientNotes(index);
		notesService.saveNotes(noteId);
		obj.setNoteId(noteId);
	}

	public void setPersonId(SharedNotes obj, int index) {
		Person personId = personDataOnDemand.getNewTransientPerson(index);
		personService.savePerson(personId);
		obj.setPersonId(personId);
	}

	public void setRoleId(SharedNotes obj, int index) {
		DtNotesRole roleId = dtNotesRoleDataOnDemand.getRandomDtNotesRole();
		obj.setRoleId(roleId);
	}

	public SharedNotes getSpecificSharedNotes(int index) {
		init();
		if (index < 0) {
			index = 0;
		}
		if (index > (data.size() - 1)) {
			index = data.size() - 1;
		}
		SharedNotes obj = data.get(index);
		SharedNotesPK id = obj.getId();
		return sharedNotesService.findSharedNotes(id);
	}

	public SharedNotes getRandomSharedNotes() {
		init();
		SharedNotes obj = data.get(rnd.nextInt(data.size()));
		SharedNotesPK id = obj.getId();
		return sharedNotesService.findSharedNotes(id);
	}

	public boolean modifySharedNotes(SharedNotes obj) {
		return false;
	}

	public void init() {
		int from = 0;
		int to = 10;
		data = sharedNotesService.findSharedNotesEntries(from, to);
		if (data == null) {
			throw new IllegalStateException(
					"Find entries implementation for 'SharedNotes' illegally returned null");
		}
		if (!data.isEmpty()) {
			return;
		}

		data = new ArrayList<SharedNotes>();
		for (int i = 0; i < 10; i++) {
			SharedNotes obj = getNewTransientSharedNotes(i);
			try {
				sharedNotesService.saveSharedNotes(obj);
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
			sharedNotesRepository.flush();
			data.add(obj);
		}
	}
}
