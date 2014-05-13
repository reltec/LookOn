// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.CommunityPersonPK;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect CommunityPersonPK_Roo_Json {
    
    public String CommunityPersonPK.toJson() {
        return new JSONSerializer()
        .exclude("*.class").serialize(this);
    }
    
    public String CommunityPersonPK.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(this);
    }
    
    public static CommunityPersonPK CommunityPersonPK.fromJsonToCommunityPersonPK(String json) {
        return new JSONDeserializer<CommunityPersonPK>()
        .use(null, CommunityPersonPK.class).deserialize(json);
    }
    
    public static String CommunityPersonPK.toJsonArray(Collection<CommunityPersonPK> collection) {
        return new JSONSerializer()
        .exclude("*.class").serialize(collection);
    }
    
    public static String CommunityPersonPK.toJsonArray(Collection<CommunityPersonPK> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<CommunityPersonPK> CommunityPersonPK.fromJsonArrayToCommunityPersonPKs(String json) {
        return new JSONDeserializer<List<CommunityPersonPK>>()
        .use("values", CommunityPersonPK.class).deserialize(json);
    }
    
}