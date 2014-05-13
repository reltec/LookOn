package com.reltecsoft.lookon.domain;

import org.springframework.roo.addon.dod.RooDataOnDemand;

@RooDataOnDemand(entity = Workspace.class)
public class WorkspaceDataOnDemand {

	public void setPerson(Workspace obj, int index) {
		Person person = personDataOnDemand.getNewTransientPerson(index);
		obj.setPerson(person);
	}
}
