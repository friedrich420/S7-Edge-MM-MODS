.class public Lcom/sec/epdg/handover/EpdgImsSettings;
.super Ljava/lang/Object;
.source "EpdgImsSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;
    }
.end annotation


# static fields
.field private static final DEFAULT_INT_SETTING_VALUE:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "[EpdgImsSettings]"

.field private static mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;

.field private mIsLvcEnabled:I

.field private mIsVoWifiProvisioned:I

.field private mIsVolteEnabled:I

.field private mIsVolteProvisioned:I

.field private mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

.field private final mSettingFieldsStr:[Ljava/lang/String;

.field private final mePdgHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/util/SparseArray;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hdlr"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/high16 v3, -0x80000000

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;

    .line 54
    iput-object v0, p0, mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "content://com.sec.ims.settings/imsswitch/mmtel"

    aput-object v2, v0, v1

    const-string v1, "content://com.sec.ims.settings/imsswitch/mmtel-video"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->IMS_SETTING_VOLTE_PROVISIONED:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->IMS_SETTING_VWF_PROVISIONED:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, mSettingFieldsStr:[Ljava/lang/String;

    .line 63
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, mePdgHandler:Landroid/os/Handler;

    .line 65
    invoke-static {p1}, Lcom/sec/epdg/EpdgSettingsWriter;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v0

    iput-object v0, p0, mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;

    .line 67
    iput v3, p0, mIsVolteEnabled:I

    .line 68
    iput v3, p0, mIsLvcEnabled:I

    .line 69
    iput v3, p0, mIsVolteProvisioned:I

    .line 70
    iput v3, p0, mIsVoWifiProvisioned:I

    .line 71
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-direct {v0, p0}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;-><init>(Lcom/sec/epdg/handover/EpdgImsSettings;)V

    iput-object v0, p0, mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    .line 72
    if-eqz p3, :cond_41

    .line 73
    invoke-direct {p0, p3, v4}, update(Landroid/util/SparseArray;Z)V

    .line 75
    :cond_41
    return-void
.end method

.method static synthetic access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;
    .registers 2
    .param p0, "x0"    # Lcom/sec/epdg/handover/EpdgImsSettings;

    .prologue
    .line 39
    iget-object v0, p0, mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;Landroid/util/SparseArray;)Lcom/sec/epdg/handover/EpdgImsSettings;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hdlr"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/epdg/handover/EpdgImsSettings;"
        }
    .end annotation

    .prologue
    .line 88
    .local p2, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    sget-object v0, mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    if-nez v0, :cond_b

    .line 89
    new-instance v0, Lcom/sec/epdg/handover/EpdgImsSettings;

    invoke-direct {v0, p0, p1, p2}, <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/util/SparseArray;)V

    sput-object v0, mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    .line 91
    :cond_b
    sget-object v0, mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;

    return-object v0
.end method

.method private getInt(Ljava/lang/String;)I
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 421
    const/high16 v0, -0x80000000

    .line 422
    .local v0, "ret":I
    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 423
    const/4 v0, 0x1

    .line 428
    :cond_b
    :goto_b
    return v0

    .line 424
    :cond_c
    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 425
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private postImsReadyToEpdgService(Z)V
    .registers 4
    .param p1, "bootup"    # Z

    .prologue
    .line 442
    if-eqz p1, :cond_f

    .line 443
    iget-object v1, p0, mePdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 444
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x4c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 445
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 447
    .end local v0    # "msg":Landroid/os/Message;
    :cond_f
    return-void
.end method

.method private postToEpdgService(ZII)V
    .registers 6
    .param p1, "bootup"    # Z
    .param p2, "event"    # I
    .param p3, "arg1"    # I

    .prologue
    .line 432
    sget-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-eqz v1, :cond_13

    if-nez p1, :cond_13

    .line 434
    iget-object v1, p0, mePdgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 435
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 436
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 437
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 439
    .end local v0    # "msg":Landroid/os/Message;
    :cond_13
    return-void
.end method

.method private update(Landroid/os/Bundle;Z)V
    .registers 8
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "bootup"    # Z

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 160
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 161
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 162
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 165
    invoke-direct {p0, v1, v3, p2}, updateInternal(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_8

    .line 167
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_20
    return-void
.end method

.method private update(Landroid/util/SparseArray;Z)V
    .registers 13
    .param p2, "bootup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v9, 0x84

    const/16 v8, 0x61

    const/16 v5, 0x60

    const/16 v7, 0x5d

    .line 208
    iget-object v4, p0, mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    if-eqz v4, :cond_e

    if-nez p1, :cond_17

    .line 209
    :cond_e
    const-string v4, "[EpdgImsSettings]"

    const-string/jumbo v5, "updateEpdgImsSettings : Invalid params"

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_16
    return-void

    .line 212
    :cond_17
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_46

    .line 213
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, getInt(Ljava/lang/String;)I

    move-result v2

    .line 214
    .local v2, "isVolteEnabled":I
    const-string v4, "[EpdgImsSettings]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VOLTE_ENABLED_BY_USER : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iput v2, p0, mIsVolteEnabled:I

    .line 216
    const/16 v4, 0x3f

    invoke-direct {p0, p2, v4, v2}, postToEpdgService(ZII)V

    .line 218
    .end local v2    # "isVolteEnabled":I
    :cond_46
    invoke-virtual {p1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_70

    .line 219
    invoke-virtual {p1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, getInt(Ljava/lang/String;)I

    move-result v0

    .line 220
    .local v0, "isLVCEnabled":I
    const-string v4, "[EpdgImsSettings]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LVC_ENABLED :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iput v0, p0, mIsLvcEnabled:I

    .line 223
    .end local v0    # "isLVCEnabled":I
    :cond_70
    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9f

    .line 224
    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, getInt(Ljava/lang/String;)I

    move-result v3

    .line 225
    .local v3, "isVolteProvisioned":I
    const-string v4, "[EpdgImsSettings]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VOLTE_PROVISIONED : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iput v3, p0, mIsVolteProvisioned:I

    .line 227
    const/16 v4, 0x42

    invoke-direct {p0, p2, v4, v3}, postToEpdgService(ZII)V

    .line 229
    .end local v3    # "isVolteProvisioned":I
    :cond_9f
    invoke-virtual {p1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_ce

    .line 230
    invoke-virtual {p1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, getInt(Ljava/lang/String;)I

    move-result v1

    .line 231
    .local v1, "isVoWifiProvisioned":I
    const-string v4, "[EpdgImsSettings]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VOWIFI_PROVISIONED : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iput v1, p0, mIsVoWifiProvisioned:I

    .line 233
    const/16 v4, 0x43

    invoke-direct {p0, p2, v4, v1}, postToEpdgService(ZII)V

    .line 235
    .end local v1    # "isVoWifiProvisioned":I
    :cond_ce
    invoke-direct {p0, p1}, updateOmadmSettings(Landroid/util/SparseArray;)V

    .line 236
    invoke-direct {p0, p2}, postImsReadyToEpdgService(Z)V

    goto/16 :goto_16
.end method

.method private updateInternal(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "bootup"    # Z

    .prologue
    .line 169
    const-string v4, "content://com.sec.ims.settings/imsswitch/mmtel"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 170
    invoke-direct {p0, p2}, getInt(Ljava/lang/String;)I

    move-result v2

    .line 171
    .local v2, "isVolteEnabled":I
    const-string v4, "[EpdgImsSettings]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VOLTE_ENABLED_BY_USER : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget v4, p0, mIsVolteEnabled:I

    if-ne v2, v4, :cond_29

    .line 205
    .end local v2    # "isVolteEnabled":I
    :cond_28
    :goto_28
    return-void

    .line 175
    .restart local v2    # "isVolteEnabled":I
    :cond_29
    iput v2, p0, mIsVolteEnabled:I

    .line 176
    const/16 v4, 0x3f

    invoke-direct {p0, p3, v4, v2}, postToEpdgService(ZII)V

    .line 178
    .end local v2    # "isVolteEnabled":I
    :cond_30
    const-string v4, "content://com.sec.ims.settings/imsswitch/mmtel-video"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 179
    invoke-direct {p0, p2}, getInt(Ljava/lang/String;)I

    move-result v0

    .line 180
    .local v0, "isLVCEnabled":I
    const-string v4, "[EpdgImsSettings]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LVC_ENABLED :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget v4, p0, mIsLvcEnabled:I

    if-eq v0, v4, :cond_28

    .line 184
    iput v0, p0, mIsLvcEnabled:I

    .line 186
    .end local v0    # "isLVCEnabled":I
    :cond_5a
    sget-object v4, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->IMS_SETTING_VOLTE_PROVISIONED:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 187
    invoke-direct {p0, p2}, getInt(Ljava/lang/String;)I

    move-result v3

    .line 188
    .local v3, "isVolteProvisioned":I
    const-string v4, "[EpdgImsSettings]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VOLTE_PROVISIONED : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget v4, p0, mIsVolteProvisioned:I

    if-eq v3, v4, :cond_28

    .line 192
    iput v3, p0, mIsVolteProvisioned:I

    .line 193
    const/16 v4, 0x42

    invoke-direct {p0, p3, v4, v3}, postToEpdgService(ZII)V

    .line 195
    .end local v3    # "isVolteProvisioned":I
    :cond_89
    sget-object v4, Lcom/sec/epdg/handover/EpdgImsListener60$EpdgImsManager;->IMS_SETTING_VWF_PROVISIONED:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b8

    .line 196
    invoke-direct {p0, p2}, getInt(Ljava/lang/String;)I

    move-result v1

    .line 197
    .local v1, "isVoWifiProvisioned":I
    iget v4, p0, mIsVoWifiProvisioned:I

    if-eq v1, v4, :cond_28

    .line 200
    const-string v4, "[EpdgImsSettings]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VOWIFI_PROVISIONED : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iput v1, p0, mIsVoWifiProvisioned:I

    .line 202
    const/16 v4, 0x43

    invoke-direct {p0, p3, v4, v1}, postToEpdgService(ZII)V

    .line 204
    .end local v1    # "isVoWifiProvisioned":I
    :cond_b8
    invoke-direct {p0, p3}, postImsReadyToEpdgService(Z)V

    goto/16 :goto_28
.end method

.method private updateOmadmSettings(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v0, p0, mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setTepdg1xTimer(Landroid/util/SparseArray;)V

    .line 410
    iget-object v0, p0, mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setTepdgLteTimer(Landroid/util/SparseArray;)V

    .line 411
    iget-object v0, p0, mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setTepdgWifiTimer(Landroid/util/SparseArray;)V

    .line 412
    iget-object v0, p0, mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setCdmaRssi(Landroid/util/SparseArray;)V

    .line 413
    iget-object v0, p0, mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setLteRsrp1(Landroid/util/SparseArray;)V

    .line 414
    iget-object v0, p0, mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setLteRsrp2(Landroid/util/SparseArray;)V

    .line 415
    iget-object v0, p0, mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setLteRsrp3(Landroid/util/SparseArray;)V

    .line 416
    iget-object v0, p0, mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setWifiRssiA(Landroid/util/SparseArray;)V

    .line 417
    iget-object v0, p0, mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v0, p1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->setWifiRssiB(Landroid/util/SparseArray;)V

    .line 418
    return-void
.end method


# virtual methods
.method public getFields()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, mSettingFieldsStr:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initImsSettings(Ljava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 79
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 81
    .local v3, "value":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, updateInternal(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_8

    .line 83
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_25
    return-void
.end method

.method public onEpdgSettingChanged(Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;Lcom/sec/epdg/EpdgSettings;)V
    .registers 7
    .param p1, "imsIfForGeneral"    # Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;
    .param p2, "settings"    # Lcom/sec/epdg/EpdgSettings;

    .prologue
    const/16 v3, 0x85

    .line 114
    iget-object v1, p0, mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    if-eqz v1, :cond_a

    if-eqz p2, :cond_a

    if-nez p1, :cond_13

    .line 115
    :cond_a
    const-string v1, "[EpdgImsSettings]"

    const-string/jumbo v2, "onEpdgSettingChanged : Invalid params"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_12
    :goto_12
    return-void

    .line 118
    :cond_13
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 119
    .local v0, "paramMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v1, p0, mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->getCdmaRssi()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getCdmaRssi()I

    move-result v2

    if-eq v1, v2, :cond_33

    .line 120
    const/16 v1, 0x88

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getCdmaRssi()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    :cond_33
    iget-object v1, p0, mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->getLteRsrp1()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v2

    if-eq v1, v2, :cond_4a

    .line 123
    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    :cond_4a
    iget-object v1, p0, mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->getLteRsrp2()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v2

    if-eq v1, v2, :cond_63

    .line 126
    const/16 v1, 0x86

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    :cond_63
    iget-object v1, p0, mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->getLteRsrp3()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v2

    if-eq v1, v2, :cond_7c

    .line 129
    const/16 v1, 0x87

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    :cond_7c
    iget-object v1, p0, mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->getTepdg1xTimer()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v2

    if-eq v1, v2, :cond_95

    .line 132
    const/16 v1, 0x8d

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    :cond_95
    iget-object v1, p0, mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->getTepdgLteTimer()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v2

    if-eq v1, v2, :cond_ae

    .line 135
    const/16 v1, 0x8b

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    :cond_ae
    iget-object v1, p0, mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->getTepdgWifiTimer()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getSysSelTimer()I

    move-result v2

    if-eq v1, v2, :cond_c7

    .line 138
    const/16 v1, 0x8c

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getSysSelTimer()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    :cond_c7
    iget-object v1, p0, mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->getWifiRssiA()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v2

    if-eq v1, v2, :cond_e0

    .line 141
    const/16 v1, 0x89

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    :cond_e0
    iget-object v1, p0, mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    invoke-virtual {v1}, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->getWifiRssiB()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v2

    if-eq v1, v2, :cond_f9

    .line 144
    const/16 v1, 0x8a

    invoke-virtual {p2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    :cond_f9
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-lt v1, v3, :cond_12

    .line 147
    invoke-interface {p1, v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->updateIMSSettingValues(Landroid/util/SparseArray;)Z

    goto/16 :goto_12
.end method

.method public onEpdgSettingChanged(Lcom/sec/ims/ImsManager;Lcom/sec/epdg/EpdgSettings;)V
    .registers 5
    .param p1, "imsManager"    # Lcom/sec/ims/ImsManager;
    .param p2, "settings"    # Lcom/sec/epdg/EpdgSettings;

    .prologue
    .line 107
    iget-object v0, p0, mOmadmEpdgSettings:Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    if-nez p1, :cond_10

    .line 108
    :cond_8
    const-string v0, "[EpdgImsSettings]"

    const-string/jumbo v1, "onEpdgSettingChanged : Invalid params"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_10
    return-void
.end method

.method public readCurrentVideoSettingState()Lcom/sec/epdg/EpdgConstants$TriState;
    .registers 2

    .prologue
    .line 103
    iget v0, p0, mIsLvcEnabled:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgConstants$TriState;->get(I)Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v0

    return-object v0
.end method

.method public readCurrentVolteSettingState()Lcom/sec/epdg/EpdgConstants$TriState;
    .registers 2

    .prologue
    .line 99
    iget v0, p0, mIsVolteEnabled:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgConstants$TriState;->get(I)Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v0

    return-object v0
.end method

.method public readVolteProvisionedState()Lcom/sec/epdg/EpdgConstants$TriState;
    .registers 2

    .prologue
    .line 95
    iget v0, p0, mIsVolteProvisioned:I

    invoke-static {v0}, Lcom/sec/epdg/EpdgConstants$TriState;->get(I)Lcom/sec/epdg/EpdgConstants$TriState;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, update(Landroid/util/SparseArray;Z)V

    .line 156
    return-void
.end method

.method public updateImsSettings(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, updateInternal(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 153
    return-void
.end method
