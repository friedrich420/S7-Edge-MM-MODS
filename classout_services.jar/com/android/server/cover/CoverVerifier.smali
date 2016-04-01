.class final Lcom/android/server/cover/CoverVerifier;
.super Ljava/lang/Object;
.source "CoverVerifier.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final SAFE_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CoverManager.CoverVerifier"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultClearCoverHeight:I

.field private mDefaultClearCoverWidth:I

.field private mDefaultCoverColor:I

.field private mDefaultCoverModel:I

.field private mDefaultMiniSViewCoverHeight:I

.field private mDefaultMiniSViewCoverWidth:I

.field private mDefaultSViewCoverHeight:I

.field private mDefaultSViewCoverWidth:I

.field private mIsCoverAttached:Z

.field private mIsCoverVerified:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, mDefaultCoverColor:I

    .line 37
    iput v0, p0, mDefaultCoverModel:I

    .line 38
    iput v0, p0, mDefaultSViewCoverWidth:I

    .line 39
    iput v0, p0, mDefaultSViewCoverHeight:I

    .line 40
    iput v0, p0, mDefaultMiniSViewCoverWidth:I

    .line 41
    iput v0, p0, mDefaultMiniSViewCoverHeight:I

    .line 42
    iput v0, p0, mDefaultClearCoverWidth:I

    .line 43
    iput v0, p0, mDefaultClearCoverHeight:I

    .line 45
    iput-boolean v0, p0, mIsCoverVerified:Z

    .line 46
    iput-boolean v0, p0, mIsCoverAttached:Z

    .line 49
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 50
    invoke-direct {p0}, initializeDefaultCoverState()V

    .line 51
    return-void
.end method

.method private getDefaultTypeOfCover()I
    .registers 7

    .prologue
    const/16 v3, 0xff

    const/16 v2, 0x8

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/cover/Feature;->isSupportVerifyCover()Z

    move-result v5

    if-eqz v5, :cond_64

    .line 55
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/cover/Feature;->isSupportSViewCover()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v5

    if-ne v5, v0, :cond_26

    .line 83
    :cond_25
    :goto_25
    return v0

    .line 58
    :cond_26
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportFlipCover()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    if-nez v0, :cond_3a

    move v0, v1

    .line 60
    goto :goto_25

    .line 61
    :cond_3a
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportClearCover()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    if-ne v0, v2, :cond_4e

    move v0, v2

    .line 63
    goto :goto_25

    .line 64
    :cond_4e
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportSmartCover()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    if-ne v0, v3, :cond_62

    move v0, v3

    .line 66
    goto :goto_25

    :cond_62
    move v0, v4

    .line 68
    goto :goto_25

    .line 71
    :cond_64
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cover/Feature;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 72
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportFlipCover()Z

    move-result v0

    if-eqz v0, :cond_98

    move v0, v1

    .line 73
    goto :goto_25

    .line 76
    :cond_7e
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cover/Feature;->isSupportSViewCover()Z

    move-result v2

    if-nez v2, :cond_25

    .line 78
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportFlipCover()Z

    move-result v0

    if-eqz v0, :cond_98

    move v0, v1

    .line 79
    goto :goto_25

    :cond_98
    move v0, v4

    .line 83
    goto :goto_25
.end method

.method private getSupportSViewCoverHeight(I)I
    .registers 3
    .param p1, "coverType"    # I

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_e

    .line 119
    :pswitch_3
    const/4 v0, 0x0

    .line 121
    .local v0, "supportSViewCoverHeight":I
    :goto_4
    return v0

    .line 110
    .end local v0    # "supportSViewCoverHeight":I
    :pswitch_5
    iget v0, p0, mDefaultSViewCoverHeight:I

    .line 111
    .restart local v0    # "supportSViewCoverHeight":I
    goto :goto_4

    .line 113
    .end local v0    # "supportSViewCoverHeight":I
    :pswitch_8
    iget v0, p0, mDefaultMiniSViewCoverHeight:I

    .line 114
    .restart local v0    # "supportSViewCoverHeight":I
    goto :goto_4

    .line 116
    .end local v0    # "supportSViewCoverHeight":I
    :pswitch_b
    iget v0, p0, mDefaultClearCoverHeight:I

    .line 117
    .restart local v0    # "supportSViewCoverHeight":I
    goto :goto_4

    .line 107
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_8
        :pswitch_3
        :pswitch_b
    .end packed-switch
.end method

.method private getSupportSViewCoverWidth(I)I
    .registers 3
    .param p1, "coverType"    # I

    .prologue
    .line 88
    packed-switch p1, :pswitch_data_e

    .line 100
    :pswitch_3
    const/4 v0, 0x0

    .line 102
    .local v0, "supportSViewCoverWidth":I
    :goto_4
    return v0

    .line 91
    .end local v0    # "supportSViewCoverWidth":I
    :pswitch_5
    iget v0, p0, mDefaultSViewCoverWidth:I

    .line 92
    .restart local v0    # "supportSViewCoverWidth":I
    goto :goto_4

    .line 94
    .end local v0    # "supportSViewCoverWidth":I
    :pswitch_8
    iget v0, p0, mDefaultMiniSViewCoverWidth:I

    .line 95
    .restart local v0    # "supportSViewCoverWidth":I
    goto :goto_4

    .line 97
    .end local v0    # "supportSViewCoverWidth":I
    :pswitch_b
    iget v0, p0, mDefaultClearCoverWidth:I

    .line 98
    .restart local v0    # "supportSViewCoverWidth":I
    goto :goto_4

    .line 88
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_8
        :pswitch_3
        :pswitch_b
    .end packed-switch
.end method

.method private initializeDefaultCoverState()V
    .registers 3

    .prologue
    .line 125
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 126
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_3e

    .line 127
    const v1, 0x10501c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mDefaultSViewCoverWidth:I

    .line 129
    const v1, 0x10501c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mDefaultSViewCoverHeight:I

    .line 131
    const v1, 0x10501c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mDefaultMiniSViewCoverWidth:I

    .line 133
    const v1, 0x10501ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mDefaultMiniSViewCoverHeight:I

    .line 135
    const v1, 0x10501cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mDefaultClearCoverWidth:I

    .line 137
    const v1, 0x10501cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mDefaultClearCoverHeight:I

    .line 140
    :cond_3e
    return-void
.end method

.method private static isFactoryMode()Z
    .registers 2

    .prologue
    .line 297
    const-string/jumbo v1, "ro.factory.factory_binary"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "strFactoryProp":Ljava/lang/String;
    const-string/jumbo v1, "factory"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 302
    const-string v0, " Current CoverVerifier state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    const-string v0, "  mIsCoverVerified="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mIsCoverVerified:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 304
    const-string v0, "  mIsCoverAttached="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mIsCoverAttached:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 305
    const-string v0, "  mDefaultCoverType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, getDefaultTypeOfCover()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 306
    const-string v0, "  mDefaultCoverColor="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mDefaultCoverColor:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 307
    const-string v0, "  mDefaultSViewCoverWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mDefaultSViewCoverWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 308
    const-string v0, "  mDefaultSViewCoverHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mDefaultSViewCoverHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 309
    const-string v0, "  mDefaultMiniSViewCoverWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mDefaultMiniSViewCoverWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 310
    const-string v0, "  mDefaultMiniSViewCoverHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mDefaultMiniSViewCoverHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 311
    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method isCoverAttached()Z
    .registers 2

    .prologue
    .line 293
    iget-boolean v0, p0, mIsCoverAttached:Z

    return v0
.end method

.method isCoverVerified()Z
    .registers 2

    .prologue
    .line 289
    iget-boolean v0, p0, mIsCoverVerified:Z

    return v0
.end method

.method isCoverVerifiedAndAttached()Z
    .registers 2

    .prologue
    .line 285
    iget-boolean v0, p0, mIsCoverVerified:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, mIsCoverAttached:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method onUpdateCoverAttachedLocked(Z)Z
    .registers 6
    .param p1, "attached"    # Z

    .prologue
    const/4 v3, 0x1

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "change":Z
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 250
    iget-boolean v1, p0, mIsCoverAttached:Z

    if-eq v1, p1, :cond_15

    .line 251
    iput-boolean p1, p0, mIsCoverAttached:Z

    .line 252
    const/4 v0, 0x1

    .line 276
    :cond_15
    :goto_15
    iget-boolean v1, p0, mIsCoverAttached:Z

    iput-boolean v1, p0, mIsCoverVerified:Z

    .line 278
    const-string v1, "CoverManager.CoverVerifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUpdateCoverAttachedLocked : mIsCoverVerified ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mIsCoverAttached:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", attached="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", change="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return v0

    .line 254
    :cond_49
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/cover/Feature;->isSupportVerifyCover()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 255
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v1

    if-ne v1, v3, :cond_63

    .line 256
    iget-boolean v1, p0, mIsCoverAttached:Z

    if-nez v1, :cond_15

    .line 257
    iput-boolean v3, p0, mIsCoverAttached:Z

    .line 258
    const/4 v0, 0x1

    goto :goto_15

    .line 261
    :cond_63
    iget-boolean v1, p0, mIsCoverAttached:Z

    if-eq v1, p1, :cond_15

    .line 262
    iput-boolean p1, p0, mIsCoverAttached:Z

    .line 263
    const/4 v0, 0x1

    goto :goto_15

    .line 268
    :cond_6b
    const-string v1, "CoverManager.CoverVerifier"

    const-string/jumbo v2, "updateCoverAttachedLocked : This device is not support cover attach"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-boolean v1, p0, mIsCoverAttached:Z

    if-nez v1, :cond_15

    .line 272
    iput-boolean v3, p0, mIsCoverAttached:Z

    .line 273
    const/4 v0, 0x1

    goto :goto_15
.end method

.method onUpdateCoverVerifiedLocked()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 204
    const/4 v0, 0x0

    .line 210
    .local v0, "change":Z
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 211
    iget-boolean v2, p0, mIsCoverVerified:Z

    if-nez v2, :cond_15

    .line 212
    iput-boolean v1, p0, mIsCoverVerified:Z

    .line 213
    const/4 v0, 0x1

    .line 239
    :cond_15
    :goto_15
    iget-boolean v2, p0, mIsCoverVerified:Z

    iput-boolean v2, p0, mIsCoverAttached:Z

    .line 241
    const-string v2, "CoverManager.CoverVerifier"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCoverVerificationLocked : mIsCoverVerified ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, mIsCoverVerified:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", change="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return v0

    .line 215
    :cond_3f
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cover/Feature;->isSupportVerifyCover()Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 216
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v2

    if-ne v2, v1, :cond_59

    .line 217
    iget-boolean v2, p0, mIsCoverVerified:Z

    if-nez v2, :cond_15

    .line 218
    iput-boolean v1, p0, mIsCoverVerified:Z

    .line 219
    const/4 v0, 0x1

    goto :goto_15

    .line 222
    :cond_59
    const-string v2, "/sys/devices/w1_bus_master1/w1_master_verify_mac"

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/server/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_6a

    .line 224
    .local v1, "verified":Z
    :goto_62
    iget-boolean v2, p0, mIsCoverVerified:Z

    if-eq v2, v1, :cond_15

    .line 225
    iput-boolean v1, p0, mIsCoverVerified:Z

    .line 226
    const/4 v0, 0x1

    goto :goto_15

    .line 222
    .end local v1    # "verified":Z
    :cond_6a
    const/4 v1, 0x0

    goto :goto_62

    .line 231
    :cond_6c
    const-string v2, "CoverManager.CoverVerifier"

    const-string/jumbo v3, "updateCoverVerificationLocked : This device is not support cover verify"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-boolean v2, p0, mIsCoverVerified:Z

    if-nez v2, :cond_15

    .line 235
    iput-boolean v1, p0, mIsCoverVerified:Z

    .line 236
    const/4 v0, 0x1

    goto :goto_15
.end method

.method updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V
    .registers 11
    .param p1, "destCoverState"    # Lcom/samsung/android/cover/CoverState;
    .param p2, "srcCoverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 144
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 146
    if-nez p2, :cond_41

    .line 147
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_39

    .line 148
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v1

    .line 149
    .local v1, "type":I
    iget v2, p0, mDefaultCoverColor:I

    .line 150
    .local v2, "color":I
    iget v6, p0, mDefaultCoverModel:I

    .line 151
    .local v6, "model":I
    invoke-direct {p0, v1}, getSupportSViewCoverWidth(I)I

    move-result v3

    .line 152
    .local v3, "widthPixel":I
    invoke-direct {p0, v1}, getSupportSViewCoverHeight(I)I

    move-result v4

    .line 153
    .local v4, "heightPixel":I
    invoke-static {}, isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_31

    .line 154
    iget-boolean v5, p0, mIsCoverAttached:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/cover/CoverState;->updateCoverState(IIIIZI)V

    .line 156
    :cond_31
    const-string v0, "CoverManager.CoverVerifier"

    const-string v5, "[SmartCover] CoverVerify : sview cover test mode enabled"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .end local v1    # "type":I
    .end local v2    # "color":I
    .end local v3    # "widthPixel":I
    .end local v4    # "heightPixel":I
    .end local v6    # "model":I
    :cond_38
    :goto_38
    return-void

    .line 158
    :cond_39
    const-string v0, "CoverManager.CoverVerifier"

    const-string v5, "[SmartCover] CoverVerify : updateCoverPropertiesLocked : srcCoverState is null"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 162
    :cond_41
    invoke-static {}, isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_38

    .line 163
    invoke-virtual {p1, p2}, Lcom/samsung/android/cover/CoverState;->copyFrom(Lcom/samsung/android/cover/CoverState;)V

    .line 165
    iget v1, p1, Lcom/samsung/android/cover/CoverState;->type:I

    .line 166
    .restart local v1    # "type":I
    const/16 v0, 0xff

    if-eq v1, v0, :cond_5e

    .line 167
    invoke-direct {p0, v1}, getSupportSViewCoverWidth(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/cover/CoverState;->setWindowWidth(I)V

    .line 168
    invoke-direct {p0, v1}, getSupportSViewCoverHeight(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/cover/CoverState;->setWindowHeight(I)V

    .line 172
    :cond_5e
    const-string v0, "CoverManager.CoverVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SmartCover] CoverVerify : updateCoverPropertiesLocked : type ="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", color="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getColor()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", app Uri="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSmartCoverAppUri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", widthPixel="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getWindowWidth()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", heightPixel="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getWindowHeight()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 179
    .end local v1    # "type":I
    :cond_b3
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-nez v0, :cond_126

    iget-boolean v0, p0, mIsCoverAttached:Z

    if-eqz v0, :cond_126

    .line 180
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_id"

    invoke-direct {p0}, getDefaultTypeOfCover()I

    move-result v5

    invoke-static {v0, v5}, Lcom/android/server/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v1

    .line 182
    .restart local v1    # "type":I
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_color"

    iget v5, p0, mDefaultCoverColor:I

    invoke-static {v0, v5}, Lcom/android/server/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v2

    .line 184
    .restart local v2    # "color":I
    const-string v0, "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_model"

    iget v5, p0, mDefaultCoverModel:I

    invoke-static {v0, v5}, Lcom/android/server/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v6

    .line 191
    .restart local v6    # "model":I
    :goto_d7
    invoke-direct {p0, v1}, getSupportSViewCoverWidth(I)I

    move-result v3

    .line 192
    .restart local v3    # "widthPixel":I
    invoke-direct {p0, v1}, getSupportSViewCoverHeight(I)I

    move-result v4

    .line 193
    .restart local v4    # "heightPixel":I
    invoke-static {}, isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_eb

    .line 194
    iget-boolean v5, p0, mIsCoverAttached:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/cover/CoverState;->updateCoverState(IIIIZI)V

    .line 197
    :cond_eb
    const-string v0, "CoverManager.CoverVerifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCoverPropertiesLocked : mIsCoverAttached ="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, mIsCoverAttached:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", type="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", color="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", model="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_38

    .line 187
    .end local v1    # "type":I
    .end local v2    # "color":I
    .end local v3    # "widthPixel":I
    .end local v4    # "heightPixel":I
    .end local v6    # "model":I
    :cond_126
    invoke-direct {p0}, getDefaultTypeOfCover()I

    move-result v1

    .line 188
    .restart local v1    # "type":I
    iget v2, p0, mDefaultCoverColor:I

    .line 189
    .restart local v2    # "color":I
    iget v6, p0, mDefaultCoverModel:I

    .restart local v6    # "model":I
    goto :goto_d7
.end method
