package com.reltecsoft.lookon.domain;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.roo.addon.dod.RooDataOnDemand;
import org.springframework.stereotype.Component;

import com.reltecsoft.lookon.repository.ChatMemberRepository;
import com.reltecsoft.lookon.service.ChatMemberService;
import com.reltecsoft.lookon.service.ChatService;
import com.reltecsoft.lookon.service.PersonService;

@Component
@RooDataOnDemand(entity = ChatMember.class)
public class ChatMemberDataOnDemand {

	private Random rnd = new SecureRandom();

	private List<ChatMember> data;

	@Autowired
	ChatDataOnDemand chatDataOnDemand;

	@Autowired
	PersonDataOnDemand personDataOnDemand;

	@Autowired
	DtChatRoleDataOnDemand dtChatRoleDataOnDemand;

	@Autowired
	ChatMemberService chatMemberService;

	@Autowired
	ChatService chatService;

	@Autowired
	PersonService personService;

	@Autowired
	ChatMemberRepository chatMemberRepository;

	public ChatMember getNewTransientChatMember(int index) {
		ChatMember obj = new ChatMember();
		setChatId(obj, index);
		setInviterId(obj, index);
		setPersonId(obj, index);
		setRoleId(obj, index);
		setEmbeddedIdClass(obj, index);
		return obj;
	}

	public void setEmbeddedIdClass(ChatMember obj, int index) {
		// Long personId = new Integer(index).longValue();
		// Long chatId = new Integer(index).longValue();
		// Integer roleId = new Integer(index);
		// Long inviterId = new Integer(index).longValue();
		// Calendar inviteDate = Calendar.getInstance();

		Long personId = obj.getPersonId().getId();
		Long chatId = obj.getChatId().getId();
		Integer roleId = obj.getRoleId().getId();
		Long inviterId = obj.getInviterId().getId();
		Calendar inviteDate = Calendar.getInstance();

		ChatMemberPK embeddedIdClass = new ChatMemberPK(personId, chatId,
				roleId, inviterId, inviteDate);
		obj.setId(embeddedIdClass);
	}

	public void setChatId(ChatMember obj, int index) {
		Chat chatId = chatDataOnDemand.getNewTransientChat(index);
		chatService.saveChat(chatId);
		obj.setChatId(chatId);
	}

	public void setInviterId(ChatMember obj, int index) {
		Person inviterId = personDataOnDemand.getRandomPerson();
		obj.setInviterId(inviterId);
	}

	public void setPersonId(ChatMember obj, int index) {
		Person personId = personDataOnDemand.getNewTransientPerson(index);
		personService.savePerson(personId);
		obj.setPersonId(personId);
	}

	public void setRoleId(ChatMember obj, int index) {
		DtChatRole roleId = dtChatRoleDataOnDemand.getRandomDtChatRole();
		obj.setRoleId(roleId);
	}

	public ChatMember getSpecificChatMember(int index) {
		init();
		if (index < 0) {
			index = 0;
		}
		if (index > (data.size() - 1)) {
			index = data.size() - 1;
		}
		ChatMember obj = data.get(index);
		ChatMemberPK id = obj.getId();
		return chatMemberService.findChatMember(id);
	}

	public ChatMember getRandomChatMember() {
		init();
		ChatMember obj = data.get(rnd.nextInt(data.size()));
		ChatMemberPK id = obj.getId();
		return chatMemberService.findChatMember(id);
	}

	public boolean modifyChatMember(ChatMember obj) {
		return false;
	}

	public void init() {
		int from = 0;
		int to = 10;
		data = chatMemberService.findChatMemberEntries(from, to);
		if (data == null) {
			throw new IllegalStateException(
					"Find entries implementation for 'ChatMember' illegally returned null");
		}
		if (!data.isEmpty()) {
			return;
		}

		data = new ArrayList<ChatMember>();
		for (int i = 0; i < 10; i++) {
			ChatMember obj = getNewTransientChatMember(i);
			try {
				chatMemberService.saveChatMember(obj);
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
			chatMemberRepository.flush();
			data.add(obj);
		}
	}
}
