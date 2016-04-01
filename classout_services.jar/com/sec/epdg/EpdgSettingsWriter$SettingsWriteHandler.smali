.class Lcom/sec/epdg/EpdgSettingsWriter$SettingsWriteHandler;
.super Landroid/os/Handler;
.source "EpdgSettingsWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgSettingsWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsWriteHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 77
    return-void
.end method

.method private getOperatorNumeric()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x6

    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, "operatorNumeric":Ljava/lang/String;
    # getter for: Lcom/sec/epdg/EpdgSettingsWriter;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgSettingsWriter;->access$300()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 122
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_a2

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "imsi":Ljava/lang/String;
    const/4 v2, -0x1

    .line 125
    .local v2, "subscription":I
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isDualSimModel()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_82

    .line 126
    # getter for: Lcom/sec/epdg/EpdgSettingsWriter;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgSettingsWriter;->access$300()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_29
    if-eqz v0, :cond_97

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_97

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_97

    .line 131
    # getter for: Lcom/sec/epdg/EpdgSettingsWriter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgSettingsWriter;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IMSI is correct, moving further for operator. IMSI is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 134
    if-eqz v1, :cond_8b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_8b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v7, :cond_8b

    .line 136
    # getter for: Lcom/sec/epdg/EpdgSettingsWriter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgSettingsWriter;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getOperatorNumeric: operatorNumeric is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .end local v0    # "imsi":Ljava/lang/String;
    .end local v2    # "subscription":I
    :goto_81
    return-object v1

    .line 128
    .restart local v0    # "imsi":Ljava/lang/String;
    .restart local v2    # "subscription":I
    :cond_82
    # getter for: Lcom/sec/epdg/EpdgSettingsWriter;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgSettingsWriter;->access$300()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/sec/epdg/EpdgUtils;->getImsi(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    .line 138
    :cond_8b
    # getter for: Lcom/sec/epdg/EpdgSettingsWriter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgSettingsWriter;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "operatorNumeric is not correct, returning"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v1, 0x0

    goto :goto_81

    .line 142
    :cond_97
    # getter for: Lcom/sec/epdg/EpdgSettingsWriter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgSettingsWriter;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "checkForValidOperatorNumeric: imsi is not correct, returning"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v1, 0x0

    goto :goto_81

    .line 146
    .end local v0    # "imsi":Ljava/lang/String;
    .end local v2    # "subscription":I
    :cond_a2
    # getter for: Lcom/sec/epdg/EpdgSettingsWriter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgSettingsWriter;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "checkForValidOperatorNumeric: Telephony manager instance is null, returning false"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v1, 0x0

    goto :goto_81
.end method

.method private writeSettings(Landroid/content/ContentValues;[Ljava/lang/String;)Z
    .registers 13
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "projection"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 153
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "iwlansettings"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "todos"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "epdgsettings"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 156
    .local v1, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 158
    .local v7, "operatorNumeric":Ljava/lang/String;
    invoke-direct {p0}, getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 159
    if-nez v7, :cond_39

    .line 160
    # getter for: Lcom/sec/epdg/EpdgSettingsWriter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgSettingsWriter;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "writeSettings: operatorNumeric is null, returning"

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 179
    :goto_38
    return v0

    .line 163
    :cond_39
    # getter for: Lcom/sec/epdg/EpdgSettingsWriter;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgSettingsWriter;->access$300()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "operatornumeric=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 165
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_69

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_9d

    .line 166
    :cond_69
    # getter for: Lcom/sec/epdg/EpdgSettingsWriter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgSettingsWriter;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "writeSettings: need to use dummy values"

    invoke-static {v0, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v7, "00101"

    .line 168
    # getter for: Lcom/sec/epdg/EpdgSettingsWriter;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgSettingsWriter;->access$300()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "operatornumeric=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 171
    :cond_9d
    if-eqz v6, :cond_a2

    .line 172
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_a2
    # getter for: Lcom/sec/epdg/EpdgSettingsWriter;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgSettingsWriter;->access$300()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "operatornumeric=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 176
    .local v8, "ret":I
    if-gtz v8, :cond_cd

    move v0, v9

    .line 177
    goto/16 :goto_38

    .line 179
    :cond_cd
    const/4 v0, 0x1

    goto/16 :goto_38
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 81
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_b6

    .line 116
    :goto_5
    return-void

    .line 83
    :pswitch_6
    # getter for: Lcom/sec/epdg/EpdgSettingsWriter;->mWriteHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgSettingsWriter;->access$000()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 85
    # getter for: Lcom/sec/epdg/EpdgSettingsWriter;->mList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/epdg/EpdgSettingsWriter;->access$100()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 88
    :cond_1d
    # getter for: Lcom/sec/epdg/EpdgSettingsWriter;->mList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/epdg/EpdgSettingsWriter;->access$100()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->trimToSize()V

    .line 89
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;

    .line 90
    .local v3, "setting":Lcom/sec/epdg/EpdgSettingsWriter$SettingData;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 91
    .local v4, "values":Landroid/content/ContentValues;
    # getter for: Lcom/sec/epdg/EpdgSettingsWriter;->mList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/epdg/EpdgSettingsWriter;->access$100()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    .line 92
    .local v2, "projection":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 93
    .local v1, "index":I
    const/4 v1, 0x0

    :goto_3b
    # getter for: Lcom/sec/epdg/EpdgSettingsWriter;->mList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/epdg/EpdgSettingsWriter;->access$100()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_87

    .line 94
    # getter for: Lcom/sec/epdg/EpdgSettingsWriter;->mList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/epdg/EpdgSettingsWriter;->access$100()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;

    .line 95
    .local v0, "data":Lcom/sec/epdg/EpdgSettingsWriter$SettingData;
    if-eqz v0, :cond_84

    .line 96
    iget-object v5, v0, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;->key:Ljava/lang/String;

    aput-object v5, v2, v1

    .line 97
    iget-object v5, v0, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;->key:Ljava/lang/String;

    iget-object v6, v0, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;->val:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    # getter for: Lcom/sec/epdg/EpdgSettingsWriter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgSettingsWriter;->access$200()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Writing : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;->key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;->val:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 101
    .end local v0    # "data":Lcom/sec/epdg/EpdgSettingsWriter$SettingData;
    :cond_87
    iget-object v5, v3, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;->key:Ljava/lang/String;

    aput-object v5, v2, v1

    .line 102
    iget-object v5, v3, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;->key:Ljava/lang/String;

    iget-object v6, v3, Lcom/sec/epdg/EpdgSettingsWriter$SettingData;->val:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    .line 104
    invoke-direct {p0, v4, v2}, writeSettings(Landroid/content/ContentValues;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_ac

    .line 105
    iget v5, p1, Landroid/os/Message;->arg1:I

    const/4 v6, 0x3

    if-ge v5, v6, :cond_ac

    .line 106
    iget v5, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Landroid/os/Message;->arg1:I

    .line 107
    const-wide/16 v6, 0x7d0

    invoke-virtual {p0, p1, v6, v7}, sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_5

    .line 111
    :cond_ac
    # getter for: Lcom/sec/epdg/EpdgSettingsWriter;->mList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/sec/epdg/EpdgSettingsWriter;->access$100()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_5

    .line 81
    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
