package com.reltecsoft.lookon.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooJpaEntity(versionField = "", table = "person", schema = "dbo")
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "workspace", "chatMembers", "chatMembers1", "chatMessages", "comments", "communities", "communitypeople", "noteses", "personAlbums", "personBlacklists", "personBlacklists1", "personChats", "personFriends", "personFriends1", "personRatings", "personRatings1", "privateMessages", "privateMessages1", "sharedNoteses", "activityStatusId", "networkStatusId", "photoId", "moneyId" })
public class Person {
}
