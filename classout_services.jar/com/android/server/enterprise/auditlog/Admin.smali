.class public Lcom/android/server/enterprise/auditlog/Admin;
.super Ljava/lang/Object;
.source "Admin.java"

# interfaces
.implements Lcom/android/server/enterprise/auditlog/IObserver;


# instance fields
.field private mAdminOutputFile:Landroid/os/ParcelFileDescriptor;

.field private mAuditLogRulesInfo:Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

.field private mBegin:J

.field private mContext:Landroid/content/Context;

.field private mDeviceInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mEnd:J

.field private mIptablesLogging:Z

.field private volatile mIsDumping:Z

.field private mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

.field private mMdmLogging:Z

.field private mPackageName:Ljava/lang/String;

.field private mUid:I


# direct methods
.method constructor <init>(ILandroid/content/Context;Ljava/lang/String;)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v3, p0, mPackageName:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;-><init>()V

    iput-object v0, p0, mAuditLogRulesInfo:Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    .line 62
    iput-object p3, p0, mPackageName:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/android/server/enterprise/auditlog/LogWritter;

    iget-object v1, p0, mPackageName:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/enterprise/auditlog/LogWritter;-><init>(ILandroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    .line 64
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 65
    iget-object v0, p0, mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->setObserver(Lcom/android/server/enterprise/auditlog/IObserver;)V

    .line 67
    iput-boolean v2, p0, mIsDumping:Z

    .line 68
    iput-boolean v2, p0, mIptablesLogging:Z

    .line 69
    iput-boolean v2, p0, mMdmLogging:Z

    .line 70
    iput-object v3, p0, mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 71
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 72
    iput-wide v4, p0, mBegin:J

    .line 73
    iput-wide v4, p0, mEnd:J

    .line 74
    iput p1, p0, mUid:I

    .line 75
    return-void
.end method


# virtual methods
.method createBubbleDirectory()V
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->createBubbleDirectory()V

    .line 166
    return-void
.end method

.method createBubbleFile()V
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->createBubbleFile()V

    .line 170
    return-void
.end method

.method deleteAllFiles()V
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->deleteAllFiles()V

    .line 126
    return-void
.end method

.method dump(JJLandroid/os/ParcelFileDescriptor;)Z
    .registers 9
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .param p5, "outputFile"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 90
    iget-boolean v1, p0, mIsDumping:Z

    if-nez v1, :cond_22

    .line 91
    iput-boolean v2, p0, mIsDumping:Z

    .line 92
    iput-wide p1, p0, mBegin:J

    .line 93
    iput-wide p3, p0, mEnd:J

    .line 94
    iput-object p5, p0, mAdminOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 95
    iget-object v1, p0, mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v1, p0}, Lcom/android/server/enterprise/auditlog/LogWritter;->setObserver(Lcom/android/server/enterprise/auditlog/IObserver;)V

    .line 96
    iget-object v1, p0, mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->setIsDumping(ZZ)V

    .line 97
    iget-object v0, p0, mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    const-string/jumbo v1, "swap"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/LogWritter;->swapFiles(Ljava/lang/String;)V

    .line 98
    iget-boolean v0, p0, mIsDumping:Z

    .line 100
    :cond_22
    return v0
.end method

.method getAuditLogRulesInfo()Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, mAuditLogRulesInfo:Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    return-object v0
.end method

.method getBufferSize()J
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getBufferLogSize()J

    move-result-wide v0

    return-wide v0
.end method

.method getCriticalLogSize()I
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getCriticalLogSize()I

    move-result v0

    return v0
.end method

.method getCurrentLogFileSize()I
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getCurrentLogFileSize()I

    move-result v0

    return v0
.end method

.method getDumpState()Z
    .registers 2

    .prologue
    .line 224
    iget-boolean v0, p0, mIsDumping:Z

    return v0
.end method

.method getIptablesLogging()Z
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, mIptablesLogging:Z

    return v0
.end method

.method getMDMLogging()Z
    .registers 2

    .prologue
    .line 145
    iget-boolean v0, p0, mMdmLogging:Z

    return v0
.end method

.method getMaximumLogSize()I
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getMaximumLogSize()I

    move-result v0

    return v0
.end method

.method getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getUid()I
    .registers 2

    .prologue
    .line 153
    iget v0, p0, mUid:I

    return v0
.end method

.method public notifyDumpFinished(ZZ)V
    .registers 9
    .param p1, "result"    # Z
    .param p2, "isFull"    # Z

    .prologue
    const/4 v5, 0x0

    .line 192
    iput-boolean v5, p0, mIsDumping:Z

    .line 193
    iget-object v3, p0, mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/auditlog/LogWritter;->setTypeOfDump(Z)V

    .line 194
    iget-object v3, p0, mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v3, v5, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setIsDumping(ZZ)V

    .line 195
    iget v1, p0, mUid:I

    .line 196
    .local v1, "ownerUid":I
    iget v3, p0, mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 197
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p0, mUid:I

    invoke-static {v3, v4}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getProxyAdminOwnerUid(Lcom/android/server/enterprise/storage/EdmStorageProvider;I)I

    move-result v1

    .line 200
    :cond_23
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 201
    .local v2, "targetUserId":I
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "mdm.intent.action.dump.audit.log.result"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_38

    .line 204
    iget-object v3, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    :cond_38
    if-eqz p1, :cond_54

    .line 208
    const-string/jumbo v3, "mdm.intent.extra.audit.log.result"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    :goto_40
    const-string v3, "admin_uid"

    iget v4, p0, mUid:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    iget-object v3, p0, mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v2}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 218
    return-void

    .line 210
    :cond_54
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v3

    const-string v4, "Dump failed! Sending Intent!"

    iget-object v5, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string/jumbo v3, "mdm.intent.extra.audit.log.result"

    const/16 v4, -0x7d0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_40
.end method

.method public notifyReadyToDump(Z)V
    .registers 11
    .param p1, "result"    # Z

    .prologue
    .line 176
    if-eqz p1, :cond_31

    .line 177
    new-instance v1, Lcom/android/server/enterprise/auditlog/Dumper;

    iget-wide v2, p0, mBegin:J

    iget-wide v4, p0, mEnd:J

    iget-object v6, p0, mAdminOutputFile:Landroid/os/ParcelFileDescriptor;

    iget-object v0, p0, mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->getDumpFilesList()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/enterprise/auditlog/Dumper;-><init>(JJLandroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;Lcom/android/server/enterprise/auditlog/IObserver;)V

    .line 179
    .local v1, "d":Lcom/android/server/enterprise/auditlog/Dumper;
    iget-object v0, p0, mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-eqz v0, :cond_1f

    .line 180
    iget-object v0, p0, mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/auditlog/Dumper;->setFilter(Lcom/android/server/enterprise/auditlog/Filter;)V

    .line 181
    :cond_1f
    iget-object v0, p0, mDeviceInfo:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/auditlog/Dumper;->setDeviceInfo(Ljava/util/List;)V

    .line 182
    iget-object v0, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/auditlog/Dumper;->setPackageName(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v1}, Lcom/android/server/enterprise/auditlog/Dumper;->start()V

    .line 184
    iget-object v0, p0, mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->setLastTimestamp()V

    .line 186
    .end local v1    # "d":Lcom/android/server/enterprise/auditlog/Dumper;
    :cond_31
    return-void
.end method

.method setAuditLogRulesInfo(Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;)V
    .registers 2
    .param p1, "auditLogRulesInfo"    # Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    .prologue
    .line 228
    iput-object p1, p0, mAuditLogRulesInfo:Lcom/sec/enterprise/knox/auditlog/AuditLogRulesInfo;

    .line 229
    return-void
.end method

.method setBootCompleted(Z)V
    .registers 3
    .param p1, "boot"    # Z

    .prologue
    .line 149
    iget-object v0, p0, mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setBootCompleted(Z)V

    .line 150
    return-void
.end method

.method setBufferSize(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 157
    iget-object v0, p0, mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/auditlog/LogWritter;->setBufferLogSize(J)V

    .line 158
    return-void
.end method

.method setCriticalLogSize(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 105
    iget-object v0, p0, mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setCriticalLogSize(I)V

    .line 106
    return-void
.end method

.method setDeviceInfo(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, mDeviceInfo:Ljava/util/List;

    .line 83
    return-void
.end method

.method setFilter(Ljava/lang/String;)Z
    .registers 3
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 238
    if-eqz p1, :cond_10

    .line 239
    new-instance v0, Lcom/android/server/enterprise/auditlog/Filter;

    invoke-direct {v0}, Lcom/android/server/enterprise/auditlog/Filter;-><init>()V

    iput-object v0, p0, mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 240
    iget-object v0, p0, mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/Filter;->setFilter(Ljava/lang/String;)Z

    move-result v0

    .line 244
    :goto_f
    return v0

    .line 243
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 244
    const/4 v0, 0x1

    goto :goto_f
.end method

.method setIptablesLogging(Z)V
    .registers 2
    .param p1, "status"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, mIptablesLogging:Z

    .line 134
    return-void
.end method

.method setMDMLogging(Z)V
    .registers 2
    .param p1, "status"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, mMdmLogging:Z

    .line 142
    return-void
.end method

.method setMaximumLogSize(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 113
    iget-object v0, p0, mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->setMaximumLogSize(I)V

    .line 114
    return-void
.end method

.method shutdown()V
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/LogWritter;->shutdown()V

    .line 130
    return-void
.end method

.method write(Ljava/lang/String;)V
    .registers 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/LogWritter;->write(Ljava/lang/String;)V

    .line 79
    return-void
.end method
