// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.reltecsoft.lookon.domain;

import com.reltecsoft.lookon.domain.RealCompanyResumePK;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect RealCompanyResumePK_Roo_Json {
    
    public String RealCompanyResumePK.toJson() {
        return new JSONSerializer()
        .exclude("*.class").serialize(this);
    }
    
    public String RealCompanyResumePK.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(this);
    }
    
    public static RealCompanyResumePK RealCompanyResumePK.fromJsonToRealCompanyResumePK(String json) {
        return new JSONDeserializer<RealCompanyResumePK>()
        .use(null, RealCompanyResumePK.class).deserialize(json);
    }
    
    public static String RealCompanyResumePK.toJsonArray(Collection<RealCompanyResumePK> collection) {
        return new JSONSerializer()
        .exclude("*.class").serialize(collection);
    }
    
    public static String RealCompanyResumePK.toJsonArray(Collection<RealCompanyResumePK> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<RealCompanyResumePK> RealCompanyResumePK.fromJsonArrayToRealCompanyResumePKs(String json) {
        return new JSONDeserializer<List<RealCompanyResumePK>>()
        .use("values", RealCompanyResumePK.class).deserialize(json);
    }
    
}
