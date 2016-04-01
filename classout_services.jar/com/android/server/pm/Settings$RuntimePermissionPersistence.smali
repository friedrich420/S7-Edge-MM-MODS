.class final Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RuntimePermissionPersistence"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;
    }
.end annotation


# static fields
.field private static final MAX_WRITE_PERMISSIONS_DELAY_MILLIS:J = 0x7d0L

.field private static final WRITE_PERMISSIONS_DELAY_MILLIS:J = 0xc8L


# instance fields
.field private final mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mFingerprints:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mWriteScheduled:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/Settings;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Settings;Ljava/lang/Object;)V
    .registers 4
    .param p2, "lock"    # Ljava/lang/Object;

    .prologue
    .line 5229
    iput-object p1, p0, this$0:Lcom/android/server/pm/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5210
    new-instance v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;-><init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 5214
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, mWriteScheduled:Landroid/util/SparseBooleanArray;

    .line 5217
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 5221
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mFingerprints:Landroid/util/SparseArray;

    .line 5225
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    .line 5230
    iput-object p2, p0, mLock:Ljava/lang/Object;

    .line 5231
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .param p1, "x1"    # I

    .prologue
    .line 5205
    invoke-direct {p0, p1}, onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .param p1, "x1"    # I

    .prologue
    .line 5205
    invoke-direct {p0, p1}, writePermissionsSync(I)V

    return-void
.end method

.method private onUserRemoved(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 5370
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5372
    iget-object v2, p0, this$0:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SettingBase;

    .line 5373
    .local v1, "sb":Lcom/android/server/pm/SettingBase;
    invoke-direct {p0, v1, p1}, revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V

    goto :goto_11

    .line 5376
    .end local v1    # "sb":Lcom/android/server/pm/SettingBase;
    :cond_21
    iget-object v2, p0, this$0:Lcom/android/server/pm/Settings;

    iget-object v2, v2, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/SettingBase;

    .line 5377
    .restart local v1    # "sb":Lcom/android/server/pm/SettingBase;
    invoke-direct {p0, v1, p1}, revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V

    goto :goto_2d

    .line 5379
    .end local v1    # "sb":Lcom/android/server/pm/SettingBase;
    :cond_3d
    return-void
.end method

.method private parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;I)V
    .registers 15
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "permissionsState"    # Lcom/android/server/pm/PermissionsState;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 5473
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 5476
    .local v6, "outerDepth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_9d

    const/4 v8, 0x3

    if-ne v7, v8, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v6, :cond_9d

    .line 5477
    :cond_14
    const/4 v8, 0x3

    if-eq v7, v8, :cond_4

    const/4 v8, 0x4

    if-eq v7, v8, :cond_4

    .line 5481
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v8, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    packed-switch v10, :pswitch_data_9e

    :cond_26
    :goto_26
    packed-switch v8, :pswitch_data_a4

    goto :goto_4

    .line 5483
    :pswitch_2a
    const/4 v8, 0x0

    const-string/jumbo v9, "name"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5484
    .local v5, "name":Ljava/lang/String;
    iget-object v8, p0, this$0:Lcom/android/server/pm/Settings;

    iget-object v8, v8, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 5485
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-nez v0, :cond_65

    .line 5486
    const-string v8, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown permission:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5487
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 5481
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v5    # "name":Ljava/lang/String;
    :pswitch_5a
    const-string/jumbo v10, "item"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26

    const/4 v8, 0x0

    goto :goto_26

    .line 5491
    .restart local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .restart local v5    # "name":Ljava/lang/String;
    :cond_65
    const/4 v8, 0x0

    const-string/jumbo v9, "granted"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5492
    .local v4, "grantedStr":Ljava/lang/String;
    if-eqz v4, :cond_75

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_92

    :cond_75
    const/4 v3, 0x1

    .line 5495
    .local v3, "granted":Z
    :goto_76
    const/4 v8, 0x0

    const-string/jumbo v9, "flags"

    invoke-interface {p1, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5496
    .local v2, "flagsStr":Ljava/lang/String;
    if-eqz v2, :cond_94

    const/16 v8, 0x10

    invoke-static {v2, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 5499
    .local v1, "flags":I
    :goto_86
    if-eqz v3, :cond_96

    .line 5500
    invoke-virtual {p2, v0, p3}, Lcom/android/server/pm/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/BasePermission;I)I

    .line 5501
    const/16 v8, 0xff

    invoke-virtual {p2, v0, p3, v8, v1}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    goto/16 :goto_4

    .line 5492
    .end local v1    # "flags":I
    .end local v2    # "flagsStr":Ljava/lang/String;
    .end local v3    # "granted":Z
    :cond_92
    const/4 v3, 0x0

    goto :goto_76

    .line 5496
    .restart local v2    # "flagsStr":Ljava/lang/String;
    .restart local v3    # "granted":Z
    :cond_94
    const/4 v1, 0x0

    goto :goto_86

    .line 5504
    .restart local v1    # "flags":I
    :cond_96
    const/16 v8, 0xff

    invoke-virtual {p2, v0, p3, v8, v1}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    goto/16 :goto_4

    .line 5511
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v1    # "flags":I
    .end local v2    # "flagsStr":Ljava/lang/String;
    .end local v3    # "granted":Z
    .end local v4    # "grantedStr":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :cond_9d
    return-void

    .line 5481
    :pswitch_data_9e
    .packed-switch 0x317b13
        :pswitch_5a
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_2a
    .end packed-switch
.end method

.method private parseRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 16
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 5430
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 5433
    .local v3, "outerDepth":I
    :cond_7
    :goto_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, "type":I
    if-eq v6, v8, :cond_d5

    if-ne v6, v12, :cond_15

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_d5

    .line 5434
    :cond_15
    if-eq v6, v12, :cond_7

    const/4 v7, 0x4

    if-eq v6, v7, :cond_7

    .line 5438
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v7, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_d6

    :cond_26
    :goto_26
    packed-switch v7, :pswitch_data_e4

    goto :goto_7

    .line 5440
    :pswitch_2a
    const-string/jumbo v7, "fingerprint"

    invoke-interface {p1, v11, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5441
    .local v1, "fingerprint":Ljava/lang/String;
    iget-object v7, p0, mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v7, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5442
    sget-object v7, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5443
    .local v0, "defaultsGranted":Z
    iget-object v7, p0, mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_7

    .line 5438
    .end local v0    # "defaultsGranted":Z
    .end local v1    # "fingerprint":Ljava/lang/String;
    :sswitch_42
    const-string/jumbo v10, "runtime-permissions"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26

    const/4 v7, 0x0

    goto :goto_26

    :sswitch_4d
    const-string/jumbo v10, "pkg"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26

    move v7, v8

    goto :goto_26

    :sswitch_58
    const-string/jumbo v10, "shared-user"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_26

    const/4 v7, 0x2

    goto :goto_26

    .line 5447
    :pswitch_63
    const-string/jumbo v7, "name"

    invoke-interface {p1, v11, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5448
    .local v2, "name":Ljava/lang/String;
    iget-object v7, p0, this$0:Lcom/android/server/pm/Settings;

    iget-object v7, v7, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 5449
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v4, :cond_93

    .line 5450
    const-string v7, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown package:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5451
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_7

    .line 5454
    :cond_93
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v7

    invoke-direct {p0, p1, v7, p2}, parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;I)V

    goto/16 :goto_7

    .line 5458
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "ps":Lcom/android/server/pm/PackageSetting;
    :pswitch_9c
    const-string/jumbo v7, "name"

    invoke-interface {p1, v11, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5459
    .restart local v2    # "name":Ljava/lang/String;
    iget-object v7, p0, this$0:Lcom/android/server/pm/Settings;

    iget-object v7, v7, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/SharedUserSetting;

    .line 5460
    .local v5, "sus":Lcom/android/server/pm/SharedUserSetting;
    if-nez v5, :cond_cc

    .line 5461
    const-string v7, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown shared user:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5462
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_7

    .line 5465
    :cond_cc
    invoke-virtual {v5}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v7

    invoke-direct {p0, p1, v7, p2}, parsePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PermissionsState;I)V

    goto/16 :goto_7

    .line 5469
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :cond_d5
    return-void

    .line 5438
    :sswitch_data_d6
    .sparse-switch
        0x1b1cc -> :sswitch_4d
        0x98dd20f -> :sswitch_42
        0x1cf15833 -> :sswitch_58
    .end sparse-switch

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_63
        :pswitch_9c
    .end packed-switch
.end method

.method private revokeRuntimePermissionsAndClearFlags(Lcom/android/server/pm/SettingBase;I)V
    .registers 9
    .param p1, "sb"    # Lcom/android/server/pm/SettingBase;
    .param p2, "userId"    # I

    .prologue
    .line 5382
    invoke-virtual {p1}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v3

    .line 5384
    .local v3, "permissionsState":Lcom/android/server/pm/PermissionsState;
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 5385
    .local v2, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    iget-object v4, p0, this$0:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .line 5386
    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    if-eqz v0, :cond_c

    .line 5387
    invoke-virtual {v3, v0, p2}, Lcom/android/server/pm/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/BasePermission;I)I

    .line 5388
    const/16 v4, 0xff

    const/4 v5, 0x0

    invoke-virtual {v3, v0, p2, v4, v5}, Lcom/android/server/pm/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z

    goto :goto_c

    .line 5392
    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v2    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    :cond_32
    return-void
.end method

.method private writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .registers 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    const/4 v4, 0x0

    .line 5515
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 5516
    .local v1, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    const-string/jumbo v2, "item"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5517
    const-string/jumbo v2, "name"

    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5518
    const-string/jumbo v2, "granted"

    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->isGranted()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5520
    const-string/jumbo v2, "flags"

    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5522
    const-string/jumbo v2, "item"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5

    .line 5524
    .end local v1    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    :cond_44
    return-void
.end method

.method private writePermissionsSync(I)V
    .registers 24
    .param p1, "userId"    # I

    .prologue
    .line 5280
    new-instance v3, Landroid/util/AtomicFile;

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/Settings;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    # invokes: Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;
    invoke-static {v0, v1}, Lcom/android/server/pm/Settings;->access$100(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 5282
    .local v3, "destination":Landroid/util/AtomicFile;
    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    .line 5283
    .local v11, "permissionsForPackage":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;>;"
    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    .line 5285
    .local v12, "permissionsForSharedUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 5286
    :try_start_26
    move-object/from16 v0, p0

    iget-object v0, v0, mWriteScheduled:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5288
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/Settings;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 5289
    .local v7, "packageCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_44
    if-ge v5, v7, :cond_8a

    .line 5290
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/Settings;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 5291
    .local v8, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/Settings;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 5292
    .local v9, "packageSetting":Lcom/android/server/pm/PackageSetting;
    iget-object v0, v9, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    move-object/from16 v20, v0

    if-nez v20, :cond_87

    .line 5293
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v13

    .line 5294
    .local v13, "permissionsState":Lcom/android/server/pm/PermissionsState;
    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v14

    .line 5296
    .local v14, "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_87

    .line 5297
    invoke-virtual {v11, v8, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5289
    .end local v13    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    .end local v14    # "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    :cond_87
    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    .line 5302
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    :cond_8a
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/Settings;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v17

    .line 5303
    .local v17, "sharedUserCount":I
    const/4 v5, 0x0

    :goto_9b
    move/from16 v0, v17

    if-ge v5, v0, :cond_df

    .line 5304
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/Settings;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 5305
    .local v18, "sharedUserName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/Settings;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/SharedUserSetting;

    .line 5306
    .local v16, "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v13

    .line 5307
    .restart local v13    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v14

    .line 5309
    .restart local v14    # "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_dc

    .line 5310
    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5303
    :cond_dc
    add-int/lit8 v5, v5, 0x1

    goto :goto_9b

    .line 5313
    .end local v13    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    .end local v14    # "permissionsStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    .end local v16    # "sharedUser":Lcom/android/server/pm/SharedUserSetting;
    .end local v18    # "sharedUserName":Ljava/lang/String;
    :cond_df
    monitor-exit v21
    :try_end_e0
    .catchall {:try_start_26 .. :try_end_e0} :catchall_178

    .line 5315
    const/4 v6, 0x0

    .line 5317
    .local v6, "out":Ljava/io/FileOutputStream;
    :try_start_e1
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v6

    .line 5319
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v15

    .line 5320
    .local v15, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v20, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v20 .. v20}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v15, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 5321
    const-string/jumbo v20, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 5323
    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5324
    const/16 v20, 0x0

    const-string/jumbo v21, "runtime-permissions"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5326
    move-object/from16 v0, p0

    iget-object v0, v0, mFingerprints:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5327
    .local v4, "fingerprint":Ljava/lang/String;
    if-eqz v4, :cond_139

    .line 5328
    const/16 v20, 0x0

    const-string/jumbo v21, "fingerprint"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5331
    :cond_139
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 5332
    const/4 v5, 0x0

    :goto_13e
    if-ge v5, v7, :cond_17b

    .line 5333
    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 5334
    .restart local v8    # "packageName":Ljava/lang/String;
    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 5335
    .local v10, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    const/16 v20, 0x0

    const-string/jumbo v21, "pkg"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5336
    const/16 v20, 0x0

    const-string/jumbo v21, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5337
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10}, writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 5338
    const/16 v20, 0x0

    const-string/jumbo v21, "pkg"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_175
    .catch Ljava/lang/Throwable; {:try_start_e1 .. :try_end_175} :catch_1ed
    .catchall {:try_start_e1 .. :try_end_175} :catchall_202

    .line 5332
    add-int/lit8 v5, v5, 0x1

    goto :goto_13e

    .line 5313
    .end local v4    # "fingerprint":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .end local v7    # "packageCount":I
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v10    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    .end local v15    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v17    # "sharedUserCount":I
    :catchall_178
    move-exception v20

    :try_start_179
    monitor-exit v21
    :try_end_17a
    .catchall {:try_start_179 .. :try_end_17a} :catchall_178

    throw v20

    .line 5341
    .restart local v4    # "fingerprint":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v7    # "packageCount":I
    .restart local v15    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v17    # "sharedUserCount":I
    :cond_17b
    :try_start_17b
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v17

    .line 5342
    const/4 v5, 0x0

    :goto_180
    move/from16 v0, v17

    if-ge v5, v0, :cond_1bc

    .line 5343
    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 5344
    .restart local v8    # "packageName":Ljava/lang/String;
    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 5345
    .restart local v10    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    const/16 v20, 0x0

    const-string/jumbo v21, "shared-user"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5346
    const/16 v20, 0x0

    const-string/jumbo v21, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5347
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10}, writePermissions(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    .line 5348
    const/16 v20, 0x0

    const-string/jumbo v21, "shared-user"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5342
    add-int/lit8 v5, v5, 0x1

    goto :goto_180

    .line 5351
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v10    # "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    :cond_1bc
    const/16 v20, 0x0

    const-string/jumbo v21, "runtime-permissions"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5352
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 5353
    invoke-virtual {v3, v6}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 5355
    sget-object v20, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1e9

    .line 5356
    move-object/from16 v0, p0

    iget-object v0, v0, mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_1e9
    .catch Ljava/lang/Throwable; {:try_start_17b .. :try_end_1e9} :catch_1ed
    .catchall {:try_start_17b .. :try_end_1e9} :catchall_202

    .line 5364
    :cond_1e9
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5366
    .end local v4    # "fingerprint":Ljava/lang/String;
    .end local v15    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_1ec
    return-void

    .line 5359
    :catch_1ed
    move-exception v19

    .line 5360
    .local v19, "t":Ljava/lang/Throwable;
    :try_start_1ee
    const-string v20, "PackageManager"

    const-string v21, "Failed to write settings, restoring backup"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5362
    invoke-virtual {v3, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1fe
    .catchall {:try_start_1ee .. :try_end_1fe} :catchall_202

    .line 5364
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1ec

    .end local v19    # "t":Ljava/lang/Throwable;
    :catchall_202
    move-exception v20

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v20
.end method


# virtual methods
.method public areDefaultRuntimPermissionsGrantedLPr(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 5234
    iget-object v0, p0, mDefaultPermissionsGranted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public deleteUserRuntimePermissionsFile(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 5395
    iget-object v0, p0, this$0:Lcom/android/server/pm/Settings;

    # invokes: Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;
    invoke-static {v0, p1}, Lcom/android/server/pm/Settings;->access$100(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 5396
    return-void
.end method

.method public onDefaultRuntimePermissionsGrantedLPr(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 5238
    iget-object v0, p0, mFingerprints:Landroid/util/SparseArray;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5239
    invoke-virtual {p0, p1}, writePermissionsForUserAsyncLPr(I)V

    .line 5240
    return-void
.end method

.method public readStateForUserSyncLPr(I)V
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 5399
    iget-object v5, p0, this$0:Lcom/android/server/pm/Settings;

    # invokes: Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;
    invoke-static {v5, p1}, Lcom/android/server/pm/Settings;->access$100(Lcom/android/server/pm/Settings;I)Ljava/io/File;

    move-result-object v4

    .line 5400
    .local v4, "permissionsFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_d

    .line 5426
    :goto_c
    return-void

    .line 5406
    :cond_d
    :try_start_d
    new-instance v5, Landroid/util/AtomicFile;

    invoke-direct {v5, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_15} :catch_25

    move-result-object v2

    .line 5413
    .local v2, "in":Ljava/io/FileInputStream;
    :try_start_16
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 5414
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 5415
    invoke-direct {p0, v3, p1}, parseRuntimePermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_21
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_21} :catch_2e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_21} :catch_69
    .catchall {:try_start_16 .. :try_end_21} :catchall_64

    .line 5424
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_c

    .line 5407
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_25
    move-exception v1

    .line 5408
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    const-string v5, "PackageManager"

    const-string v6, "No permissions state"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 5417
    .end local v1    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_2e
    move-exception v5

    move-object v0, v5

    .line 5418
    .local v0, "e":Ljava/lang/Exception;
    :goto_30
    :try_start_30
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 5419
    const/4 v5, 0x6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "runtime-permissions.xml is corrupted for user"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 5421
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed parsing permissions file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_64
    .catchall {:try_start_30 .. :try_end_64} :catchall_64

    .line 5424
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_64
    move-exception v5

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    .line 5417
    :catch_69
    move-exception v5

    move-object v0, v5

    goto :goto_30
.end method

.method public writePermissionsForUserAsyncLPr(I)V
    .registers 20
    .param p1, "userId"    # I

    .prologue
    .line 5248
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 5250
    .local v2, "currentTimeMillis":J
    move-object/from16 v0, p0

    iget-object v9, v0, mWriteScheduled:Landroid/util/SparseBooleanArray;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    if-eqz v9, :cond_5b

    .line 5251
    move-object/from16 v0, p0

    iget-object v9, v0, mHandler:Landroid/os/Handler;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5254
    move-object/from16 v0, p0

    iget-object v9, v0, mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    .line 5256
    .local v4, "lastNotWrittenMutationTimeMillis":J
    sub-long v10, v2, v4

    .line 5258
    .local v10, "timeSinceLastNotWrittenMutationMillis":J
    const-wide/16 v14, 0x7d0

    cmp-long v9, v10, v14

    if-ltz v9, :cond_39

    .line 5259
    move-object/from16 v0, p0

    iget-object v9, v0, mHandler:Landroid/os/Handler;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 5277
    .end local v4    # "lastNotWrittenMutationTimeMillis":J
    .end local v10    # "timeSinceLastNotWrittenMutationMillis":J
    :goto_38
    return-void

    .line 5264
    .restart local v4    # "lastNotWrittenMutationTimeMillis":J
    .restart local v10    # "timeSinceLastNotWrittenMutationMillis":J
    :cond_39
    const-wide/16 v14, 0x7d0

    add-long/2addr v14, v4

    sub-long/2addr v14, v2

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 5266
    .local v6, "maxDelayMillis":J
    const-wide/16 v14, 0xc8

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 5269
    .local v12, "writeDelayMillis":J
    move-object/from16 v0, p0

    iget-object v9, v0, mHandler:Landroid/os/Handler;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 5270
    .local v8, "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v9, v0, mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v8, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_38

    .line 5272
    .end local v4    # "lastNotWrittenMutationTimeMillis":J
    .end local v6    # "maxDelayMillis":J
    .end local v8    # "message":Landroid/os/Message;
    .end local v10    # "timeSinceLastNotWrittenMutationMillis":J
    .end local v12    # "writeDelayMillis":J
    :cond_5b
    move-object/from16 v0, p0

    iget-object v9, v0, mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    move/from16 v0, p1

    invoke-virtual {v9, v0, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 5273
    move-object/from16 v0, p0

    iget-object v9, v0, mHandler:Landroid/os/Handler;

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 5274
    .restart local v8    # "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v9, v0, mHandler:Landroid/os/Handler;

    const-wide/16 v14, 0xc8

    invoke-virtual {v9, v8, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5275
    move-object/from16 v0, p0

    iget-object v9, v0, mWriteScheduled:Landroid/util/SparseBooleanArray;

    const/4 v14, 0x1

    move/from16 v0, p1

    invoke-virtual {v9, v0, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_38
.end method

.method public writePermissionsForUserSyncLPr(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 5243
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5244
    invoke-direct {p0, p1}, writePermissionsSync(I)V

    .line 5245
    return-void
.end method
