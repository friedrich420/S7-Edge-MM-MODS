.class Lcom/android/server/LockSettingsService$KeystoreUtil;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeystoreUtil"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method private constructor <init>(Lcom/android/server/LockSettingsService;)V
    .registers 2

    .prologue
    .line 176
    iput-object p1, p0, this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/LockSettingsService;
    .param p2, "x1"    # Lcom/android/server/LockSettingsService$1;

    .prologue
    .line 175
    invoke-direct {p0, p1}, <init>(Lcom/android/server/LockSettingsService;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/LockSettingsService$KeystoreUtil;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, doUpdate(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/LockSettingsService$KeystoreUtil;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, doUnlock(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private doMDFPPKeystoreMigration(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    .line 394
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 395
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "password"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "userHandle"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 396
    iget-object v1, p0, this$0:Lcom/android/server/LockSettingsService;

    # invokes: Lcom/android/server/LockSettingsService;->migrateMDFPPKeystore(Ljava/lang/String;IZ)Z
    invoke-static {v1, p1, p2, v4}, Lcom/android/server/LockSettingsService;->access$300(Lcom/android/server/LockSettingsService;Ljava/lang/String;IZ)Z

    move-result v0

    .line 398
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migration - Result from MDFPP keystore : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 399
    return v0
.end method

.method private doUnlock(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 371
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 372
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "password"

    aput-object v3, v2, v1

    aput-object p1, v2, v0

    const/4 v3, 0x2

    const-string/jumbo v4, "userId"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 374
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_46

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 377
    .local v0, "result":Z
    :goto_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result of keystore unlock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 378
    return v0

    .end local v0    # "result":Z
    :cond_46
    move v0, v1

    .line 374
    goto :goto_2f
.end method

.method private doUpdate(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 357
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 358
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "password"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "userId"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 360
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 361
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-virtual {p0, p2}, isUninitialized(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 362
    invoke-virtual {v0, p2}, Landroid/security/KeyStore;->onUserAdded(I)V

    .line 364
    :cond_2c
    invoke-virtual {v0, p2, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    move-result v1

    .line 366
    .local v1, "result":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result of keystore update : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 367
    return v1
.end method


# virtual methods
.method adjustPassword(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 261
    invoke-virtual {p0, p1, p2}, doBruteForceKeyAdjustment(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method adjustPasswordHash(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 301
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, doBruteForceHashAdjustment(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method adjustPattern(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 255
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "zeroBased":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, doBruteForceKeyAdjustment(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method adjustPatternHash(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 297
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, doBruteForceHashAdjustment(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method doBruteForceHashAdjustment(Ljava/lang/String;II)Z
    .registers 15
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "lockType"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 305
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 306
    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "credential"

    aput-object v8, v7, v6

    aput-object p1, v7, v5

    const-string/jumbo v8, "userId"

    aput-object v8, v7, v10

    const/4 v8, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string/jumbo v9, "lockType"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 308
    const/4 v3, 0x0

    .line 309
    .local v3, "result":Z
    const/4 v2, 0x0

    .line 310
    .local v2, "matched":Z
    const/4 v1, 0x0

    .line 311
    .local v1, "hash":[B
    const/4 v0, 0x0

    .line 313
    .local v0, "encodedCredential":Ljava/lang/String;
    iget-object v7, p0, this$0:Lcom/android/server/LockSettingsService;

    # invokes: Lcom/android/server/LockSettingsService;->getStoredHash(II)Lcom/android/server/LockSettingsStorage$CredentialHash;
    invoke-static {v7, p2, p3}, Lcom/android/server/LockSettingsService;->access$100(Lcom/android/server/LockSettingsService;II)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v4

    .line 314
    .local v4, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v4, :cond_41

    iget-object v7, v4, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    if-eqz v7, :cond_41

    iget-object v7, v4, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v7, v7

    if-nez v7, :cond_5d

    .line 315
    :cond_41
    const-string v5, "Adjustment - Failed to read hash..."

    invoke-static {v5}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 352
    :cond_46
    :goto_46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adjustment - Result of forced adjustment : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 353
    return v3

    .line 316
    :cond_5d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_69

    .line 317
    const-string v5, "Adjustment - Empty credential..."

    invoke-static {v5}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_46

    .line 319
    :cond_69
    if-ne p3, v5, :cond_83

    .line 320
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    .line 328
    :cond_73
    :goto_73
    if-eqz v1, :cond_7b

    .line 329
    iget-object v7, v4, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v1, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    .line 330
    :cond_7b
    if-nez v2, :cond_98

    .line 331
    const-string v5, "Adjustment - Credential mismatch..."

    invoke-static {v5}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_46

    .line 322
    :cond_83
    if-ne p3, v10, :cond_73

    .line 323
    iget-object v7, p0, this$0:Lcom/android/server/LockSettingsService;

    # invokes: Lcom/android/server/LockSettingsService;->getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v7, p1, p2}, Lcom/android/server/LockSettingsService;->access$000(Lcom/android/server/LockSettingsService;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_73

    .line 325
    iget-object v7, p0, this$0:Lcom/android/server/LockSettingsService;

    # getter for: Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/server/LockSettingsService;->access$200(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    goto :goto_73

    .line 333
    :cond_98
    const-string v7, "Adjustment - Credential matched..."

    invoke-static {v7}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0, p2}, isLocked(I)Z

    move-result v7

    if-eqz v7, :cond_c8

    .line 341
    invoke-direct {p0, v0, p2}, doUnlock(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_46

    .line 342
    invoke-direct {p0, p1, p2}, doUnlock(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_46

    .line 343
    const-string v7, "_nullPassword012"

    invoke-direct {p0, v7, p2}, doUnlock(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_46

    .line 344
    const-string v7, "Adjustment - Unlock failed..."

    invoke-static {v7}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 345
    const-string v7, "Adjustment - Resetting the keystore..."

    invoke-static {v7}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/security/KeyStore;->onUserRemoved(I)V

    .line 348
    :cond_c8
    invoke-virtual {p0, p2}, isLocked(I)Z

    move-result v7

    if-nez v7, :cond_d1

    move v3, v5

    :goto_cf
    goto/16 :goto_46

    :cond_d1
    move v3, v6

    goto :goto_cf
.end method

.method doBruteForceHashMigration(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 229
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 230
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "credential"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "userId"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 232
    const/4 v1, 0x0

    .line 233
    .local v1, "result":Z
    iget-object v2, p0, this$0:Lcom/android/server/LockSettingsService;

    # invokes: Lcom/android/server/LockSettingsService;->getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, p1, p2}, Lcom/android/server/LockSettingsService;->access$000(Lcom/android/server/LockSettingsService;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "encodedCredential":Ljava/lang/String;
    if-nez v0, :cond_44

    .line 235
    const-string v2, "Migration - Failed to retrieve hash..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 250
    :cond_2d
    :goto_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migration - Result of forced migration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 251
    return v1

    .line 237
    :cond_44
    const-string v2, "Migration - Passward has been hashed..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 244
    invoke-direct {p0, v0, p2}, doMDFPPKeystoreMigration(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 245
    invoke-direct {p0, p1, p2}, doMDFPPKeystoreMigration(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 246
    const-string v2, "_nullPassword012"

    invoke-direct {p0, v2, p2}, doMDFPPKeystoreMigration(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 247
    const-string v2, "Migration - Recovery failed..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_2d
.end method

.method doBruteForceKeyAdjustment(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 265
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 266
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "credential"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "userId"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 268
    const/4 v1, 0x0

    .line 269
    .local v1, "result":Z
    iget-object v2, p0, this$0:Lcom/android/server/LockSettingsService;

    # invokes: Lcom/android/server/LockSettingsService;->getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, p1, p2}, Lcom/android/server/LockSettingsService;->access$000(Lcom/android/server/LockSettingsService;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "encodedCredential":Ljava/lang/String;
    if-nez v0, :cond_44

    .line 271
    const-string v2, "Adjustment - Unverified by SKMM..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 292
    :cond_2d
    :goto_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migration - Result of forced adjustment : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 293
    return v1

    .line 273
    :cond_44
    const-string v2, "Adjustment - Verified by SKMM..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0, p2}, isLocked(I)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 281
    invoke-direct {p0, v0, p2}, doUnlock(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 282
    invoke-direct {p0, p1, p2}, doUnlock(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 283
    const-string v2, "_nullPassword012"

    invoke-direct {p0, v2, p2}, doUnlock(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 284
    const-string v2, "Adjustment - Unlock failed..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 285
    const-string v2, "Adjustment - Resetting the keystore..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 286
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/security/KeyStore;->onUserRemoved(I)V

    .line 288
    :cond_74
    invoke-direct {p0, v0, p2}, doUpdate(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_2d
.end method

.method doBruteForceKeyMigration(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 189
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 190
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "credential"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "userId"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, "result":Z
    iget-object v2, p0, this$0:Lcom/android/server/LockSettingsService;

    # invokes: Lcom/android/server/LockSettingsService;->getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v2, p1, p2}, Lcom/android/server/LockSettingsService;->access$000(Lcom/android/server/LockSettingsService;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "encodedCredential":Ljava/lang/String;
    if-nez v0, :cond_44

    .line 195
    const-string v2, "Migration - Unverified by SKMM..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 214
    :cond_2d
    :goto_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migration - Result of forced migration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 215
    return v1

    .line 197
    :cond_44
    const-string v2, "Migration - Verified by SKMM..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 204
    invoke-direct {p0, v0, p2}, doMDFPPKeystoreMigration(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 205
    invoke-direct {p0, p1, p2}, doMDFPPKeystoreMigration(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 206
    const-string v2, "_nullPassword012"

    invoke-direct {p0, v2, p2}, doMDFPPKeystoreMigration(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 207
    const-string v2, "Migration - Recovery failed..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 208
    const-string v2, "Migration - Removing the old keystore..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 209
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/security/KeyStore;->resetMDFPP(I)Z

    .line 210
    invoke-direct {p0, v0, p2}, doUpdate(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_2d
.end method

.method isLocked(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 390
    sget-object v0, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isUninitialized(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 382
    sget-object v0, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isUnlocked(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 386
    sget-object v0, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method migratePassword(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 185
    invoke-virtual {p0, p1, p2}, doBruteForceKeyMigration(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method migratePasswordHash(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 225
    invoke-virtual {p0, p1, p2}, doBruteForceHashMigration(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method migratePattern(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 179
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "zeroBased":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, doBruteForceKeyMigration(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method migratePatternHash(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 219
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "zeroBased":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, doBruteForceHashMigration(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method
