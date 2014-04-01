package com.reltecsoft.lookon.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.entity.RooJpaEntity;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaEntity(table = "message")
public class Message {

    /**
     */
    @NotNull
    @Column(name = "message_text")
    @Size(min = 1, max = 2048)
    private String messageText;

    /**
     */
    @NotNull
    @Column(name = "message_time")
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date messageTime;

    /**
     */
    @ManyToOne
    @JoinColumn(name = "media_id")
    private Media media;

    /**
     */
    @NotNull
    @ManyToOne
    @JoinColumn(name = "person_id")
    private Person person;

    /**
     */
    @NotNull
    @ManyToOne
    @JoinColumn(name = "chat_id")
    private Chat chat;
}
