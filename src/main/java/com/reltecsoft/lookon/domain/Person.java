package com.reltecsoft.lookon.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaEntity(versionField = "", table = "person", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "people1", "albums2", "chats1", "people2", "workspace", "chatMembers", "chatMembers1", "chatMessages", "comments", "communities", "communitypeople", "noteses", "personBlacklists", "personBlacklists1", "personFriends", "personFriends1", "privateMessages", "privateMessages1", "sharedNoteses", "activityStatusId", "networkStatusId", "photoId" })
public class Person {
}
