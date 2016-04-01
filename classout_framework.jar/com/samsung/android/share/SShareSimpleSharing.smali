.class public Lcom/samsung/android/share/SShareSimpleSharing;
.super Ljava/lang/Object;
.source "SShareSimpleSharing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;,
        Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;,
        Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;
    }
.end annotation


# static fields
.field public static final ACTION_REQ_AUTH:Ljava/lang/String; = "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

.field private static final DEBUG:Z = false

.field private static final DEV_TYPE_MOBILE:I = 0x1

.field private static final DEV_TYPE_TABLET:I = 0x2

.field public static final INTENT_ACTION_REQUESTSEND:Ljava/lang/String; = "com.samsung.android.coreapps.rshare.action.REQUESTSEND"

.field private static final INTENT_REQUEST_RECENT_GROUP:Ljava/lang/String; = "com.samsung.android.coreapps.rshare.requestrecentgroupcontacts"

.field private static final MAX_FONT_SCALE:F = 1.2f

.field private static final MSG_INIT_RECENTLIST:I = 0x7d0

.field private static final MSG_LIST_UPDATE:I = 0x3e8

.field private static final QUICKCONNECT_PERMISSION:Ljava/lang/String; = "com.samsung.android.sconnect.permission.REQUEST_DISCOVERY_SERIVCE"

.field private static RECENT_CONTACTS_LIST_MAX_COUNT:I = 0x0

.field private static final RECENT_TYPE_CONTACT_GROUP:I = 0x2

.field private static final RECENT_TYPE_CONTACT_PHOTO:I = 0x3

.field private static final RECENT_TYPE_CONTACT_PRIV:I = 0x1

.field private static final RECENT_TYPE_DEFAULT:I = 0x0

.field private static final RECENT_TYPE_DEVICE_MOBILE:I = 0x4

.field private static final RECENT_TYPE_DEVICE_TABLET:I = 0x5

.field private static final REQUEST_CODE_REQUEST_RECENT_CONTACTS:I = 0x1

.field public static final REQUEST_CODE_SIGNUP_REQ_AUTH:I = 0x1

.field public static final SSHARING_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.coreapps.rshare.ui.RelayActivity"

.field public static final SSHARING_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.coreapps"

.field private static final TAG:Ljava/lang/String; = "SShareSimpleSharing"

.field public static final TAG_RECIPIENT_DATAIDS:Ljava/lang/String; = "recipientdataids"

.field private static final WIFIDIRECT_ACTIVITY_NAME:Ljava/lang/String; = "com.sec.android.app.FileShareClient.DeviceSelectActivity"

.field private static mEasySignUpCertificated:Z

.field private static mIsRemoteShareServiceDownloaded:Z

.field private static mRemoteShareServiceEnabled:Z

.field private static mSSharingRecentContactExisted:Z


# instance fields
.field private final ELLIPSIS_NORMAL:[C

.field private final EXTRA_KEY_RECENT_GROUP_CONTACTID:Ljava/lang/String;

.field private final EXTRA_KEY_RECENT_GROUP_COUNT:Ljava/lang/String;

.field private final EXTRA_KEY_RECENT_GROUP_DATAIDS:Ljava/lang/String;

.field private final EXTRA_KEY_RECENT_GROUP_NAMES:Ljava/lang/String;

.field private final EXTRA_KEY_RECENT_GROUP_NAME_LIST:Ljava/lang/String;

.field private final EXTRA_KEY_RECENT_GROUP_PHONENUM:Ljava/lang/String;

.field private final EXTRA_KEY_RECENT_GROUP_THUMBNAILS:Ljava/lang/String;

.field private final REMOTE_SHARE_SERVICE_ID:I

.field private final RESPONSE_RECENT_GROUP_CONTACTS:Ljava/lang/String;

.field private defaultTextSize:F

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mExtraIntentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mFeature:Lcom/samsung/android/share/SShareCommon;

.field private mGridRecentHistory:Landroid/widget/HorizontalListView;

.field private mGroupNameOldConcept:Z

.field final mHandler:Landroid/os/Handler;

.field private mIsRecentContactsReceiverRegistered:Z

.field private mIsRemoteShareServiceDownloadedChecked:Z

.field private mListupCompleted:Z

.field private mOrigIntent:Landroid/content/Intent;

.field private mRecentContactsId:[J

.field private mRecentContactsItemContactsCountInGroup:[I

.field private mRecentContactsListCount:I

.field private mRecentContactsListName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentContactsListThumb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

.field private mRecentHistoryIndex:I

.field mRecentHistoryIntent:Landroid/content/Intent;

.field private mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

.field private mRecipientDataId:[Ljava/lang/String;

.field private mTunedMargin:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 69
    sput-boolean v1, mEasySignUpCertificated:Z

    .line 70
    sput-boolean v1, mSSharingRecentContactExisted:Z

    .line 71
    const/4 v0, 0x1

    sput-boolean v0, mRemoteShareServiceEnabled:Z

    .line 72
    sput-boolean v1, mIsRemoteShareServiceDownloaded:Z

    .line 113
    const/4 v0, 0x5

    sput v0, RECENT_CONTACTS_LIST_MAX_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/samsung/android/share/SShareCommon;Landroid/content/Intent;ILjava/util/List;)V
    .registers 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "feature"    # Lcom/samsung/android/share/SShareCommon;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "launchedFromUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Context;",
            "Lcom/samsung/android/share/SShareCommon;",
            "Landroid/content/Intent;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "extraIntentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v2, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v2, p0, mRecentHistoryIndex:I

    .line 61
    iput-boolean v2, p0, mIsRecentContactsReceiverRegistered:Z

    .line 62
    iput v2, p0, mRecentContactsListCount:I

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mRecentContactsListName:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mRecentContactsListThumb:Ljava/util/List;

    .line 66
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, mTunedMargin:F

    .line 68
    iput-boolean v2, p0, mIsRemoteShareServiceDownloadedChecked:Z

    .line 88
    const-string v0, "com.samsung.android.coreapps.rshare.responserecentgroupcontacts"

    iput-object v0, p0, RESPONSE_RECENT_GROUP_CONTACTS:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, "recentgroupnamelist"

    iput-object v0, p0, EXTRA_KEY_RECENT_GROUP_NAME_LIST:Ljava/lang/String;

    .line 92
    const-string/jumbo v0, "recentgroupnames"

    iput-object v0, p0, EXTRA_KEY_RECENT_GROUP_NAMES:Ljava/lang/String;

    .line 93
    const-string/jumbo v0, "recentgroupthumbnail"

    iput-object v0, p0, EXTRA_KEY_RECENT_GROUP_THUMBNAILS:Ljava/lang/String;

    .line 94
    const-string/jumbo v0, "recentgroupdataids"

    iput-object v0, p0, EXTRA_KEY_RECENT_GROUP_DATAIDS:Ljava/lang/String;

    .line 95
    const-string/jumbo v0, "recentgroupcontactids"

    iput-object v0, p0, EXTRA_KEY_RECENT_GROUP_CONTACTID:Ljava/lang/String;

    .line 96
    const-string/jumbo v0, "recentgroupcount"

    iput-object v0, p0, EXTRA_KEY_RECENT_GROUP_COUNT:Ljava/lang/String;

    .line 97
    const-string/jumbo v0, "recentphonenumbers"

    iput-object v0, p0, EXTRA_KEY_RECENT_GROUP_PHONENUM:Ljava/lang/String;

    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/16 v1, 0x2026

    aput-char v1, v0, v2

    iput-object v0, p0, ELLIPSIS_NORMAL:[C

    .line 114
    const/4 v0, 0x2

    iput v0, p0, REMOTE_SHARE_SERVICE_ID:I

    .line 120
    iput-boolean v2, p0, mListupCompleted:Z

    .line 123
    new-instance v0, Lcom/samsung/android/share/SShareSimpleSharing$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/share/SShareSimpleSharing$1;-><init>(Lcom/samsung/android/share/SShareSimpleSharing;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 148
    new-instance v0, Lcom/samsung/android/share/SShareSimpleSharing$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/share/SShareSimpleSharing$2;-><init>(Lcom/samsung/android/share/SShareSimpleSharing;)V

    iput-object v0, p0, mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    iput-object p1, p0, mActivity:Landroid/app/Activity;

    .line 204
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 205
    iput-object p3, p0, mFeature:Lcom/samsung/android/share/SShareCommon;

    .line 206
    iput-object p4, p0, mOrigIntent:Landroid/content/Intent;

    .line 207
    new-instance v0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;-><init>(Lcom/samsung/android/share/SShareSimpleSharing;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V

    iput-object v0, p0, mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    .line 208
    sget v0, RECENT_CONTACTS_LIST_MAX_COUNT:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, mRecipientDataId:[Ljava/lang/String;

    .line 209
    sget v0, RECENT_CONTACTS_LIST_MAX_COUNT:I

    new-array v0, v0, [J

    iput-object v0, p0, mRecentContactsId:[J

    .line 210
    sget v0, RECENT_CONTACTS_LIST_MAX_COUNT:I

    new-array v0, v0, [I

    iput-object v0, p0, mRecentContactsItemContactsCountInGroup:[I

    .line 211
    iput-object p6, p0, mExtraIntentList:Ljava/util/List;

    .line 213
    invoke-direct {p0}, checkEasySignUpCertificated()V

    .line 214
    invoke-direct {p0}, checkSSharingRecentContactExisted()V

    .line 215
    invoke-direct {p0}, checkRemoteShareServiceEnabled()V

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/share/SShareSimpleSharing;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    .line 50
    invoke-direct {p0}, initRecentHistoryList()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/share/SShareSimpleSharing;)F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    .line 50
    invoke-direct {p0}, getFontScale()F

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/share/SShareSimpleSharing;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, mRecentContactsListCount:I

    return p1
.end method

.method static synthetic access$108(Lcom/samsung/android/share/SShareSimpleSharing;)I
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    .line 50
    iget v0, p0, mRecentContactsListCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, mRecentContactsListCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/share/SShareSimpleSharing;)F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    .line 50
    iget v0, p0, defaultTextSize:F

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/share/SShareSimpleSharing;F)F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;
    .param p1, "x1"    # F

    .prologue
    .line 50
    iput p1, p0, defaultTextSize:F

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/share/SShareSimpleSharing;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    .line 50
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/share/SShareSimpleSharing;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    .line 50
    iget-object v0, p0, mRecentContactsListThumb:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/share/SShareSimpleSharing;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    .line 50
    iget-object v0, p0, mRecentContactsListName:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400()I
    .registers 1

    .prologue
    .line 50
    sget v0, RECENT_CONTACTS_LIST_MAX_COUNT:I

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/android/share/SShareSimpleSharing;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, mGroupNameOldConcept:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/share/SShareSimpleSharing;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    .line 50
    iget-object v0, p0, mRecipientDataId:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/share/SShareSimpleSharing;)[J
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    .line 50
    iget-object v0, p0, mRecentContactsId:[J

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/share/SShareSimpleSharing;)[I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/share/SShareSimpleSharing;

    .prologue
    .line 50
    iget-object v0, p0, mRecentContactsItemContactsCountInGroup:[I

    return-object v0
.end method

.method private checkEasySignUpCertificated()V
    .registers 4

    .prologue
    .line 412
    iget-object v0, p0, mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->isJoined(Landroid/content/Context;I)Z

    move-result v0

    sput-boolean v0, mEasySignUpCertificated:Z

    .line 413
    const-string v0, "SShareSimpleSharing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isJoined="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, mEasySignUpCertificated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-void
.end method

.method private checkRemoteShareServiceEnabled()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 422
    sget-boolean v1, mEasySignUpCertificated:Z

    if-eqz v1, :cond_2d

    .line 424
    iget-object v1, p0, mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/android/coreapps/sdk/easysignup/EasySignUpManager;->getServiceStatus(Landroid/content/Context;I)I

    move-result v0

    .line 425
    .local v0, "retVal":I
    const-string v1, "SShareSimpleSharing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    if-eq v0, v4, :cond_2a

    .line 427
    const/4 v1, 0x0

    sput-boolean v1, mRemoteShareServiceEnabled:Z

    .line 434
    .end local v0    # "retVal":I
    :goto_29
    return-void

    .line 429
    .restart local v0    # "retVal":I
    :cond_2a
    sput-boolean v4, mRemoteShareServiceEnabled:Z

    goto :goto_29

    .line 432
    .end local v0    # "retVal":I
    :cond_2d
    sput-boolean v4, mRemoteShareServiceEnabled:Z

    goto :goto_29
.end method

.method private checkSSharingRecentContactExisted()V
    .registers 4

    .prologue
    .line 417
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/coreapps/sdk/easysignup/SimpleSharingManager;->isRecentContactExisted(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, mSSharingRecentContactExisted:Z

    .line 418
    const-string v0, "SShareSimpleSharing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecentContactExisted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, mSSharingRecentContactExisted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    return-void
.end method

.method private clearRecentHistoryList(Z)V
    .registers 3
    .param p1, "bClearAll"    # Z

    .prologue
    .line 446
    if-eqz p1, :cond_1a

    iget-object v0, p0, mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    if-eqz v0, :cond_1a

    iget-object v0, p0, mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;
    invoke-static {v0}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->access$900(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 447
    iget-object v0, p0, mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;
    invoke-static {v0}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->access$900(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, mListupCompleted:Z

    .line 450
    :cond_1a
    return-void
.end method

.method private getFontScale()F
    .registers 3

    .prologue
    .line 701
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 702
    .local v0, "fontScale":F
    const v1, 0x3f99999a    # 1.2f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_16

    .line 703
    const v0, 0x3f99999a    # 1.2f

    .line 705
    :cond_16
    return v0
.end method

.method private getRecentHistoryInfo(I)Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 453
    iget-object v0, p0, mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    return-object v0
.end method

.method private getRecentIconType([BIJI)I
    .registers 9
    .param p1, "contactThumbArray"    # [B
    .param p2, "contactCount"    # I
    .param p3, "contactId"    # J
    .param p5, "devType"    # I

    .prologue
    const/4 v2, 0x1

    .line 649
    const/4 v1, -0x1

    if-eq p5, v1, :cond_f

    .line 651
    if-ne p5, v2, :cond_8

    .line 652
    const/4 v0, 0x4

    .line 669
    .local v0, "iconType":I
    :goto_7
    return v0

    .line 653
    .end local v0    # "iconType":I
    :cond_8
    const/4 v1, 0x2

    if-ne p5, v1, :cond_d

    .line 654
    const/4 v0, 0x5

    .restart local v0    # "iconType":I
    goto :goto_7

    .line 656
    .end local v0    # "iconType":I
    :cond_d
    const/4 v0, 0x4

    .restart local v0    # "iconType":I
    goto :goto_7

    .line 660
    .end local v0    # "iconType":I
    :cond_f
    if-eqz p1, :cond_13

    .line 661
    const/4 v0, 0x3

    .restart local v0    # "iconType":I
    goto :goto_7

    .line 662
    .end local v0    # "iconType":I
    :cond_13
    if-le p2, v2, :cond_17

    .line 663
    const/4 v0, 0x2

    .restart local v0    # "iconType":I
    goto :goto_7

    .line 665
    .end local v0    # "iconType":I
    :cond_17
    const/4 v0, 0x1

    .restart local v0    # "iconType":I
    goto :goto_7
.end method

.method private initRecentHistoryDefault()V
    .registers 7

    .prologue
    .line 437
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10408c6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 438
    .local v2, "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10408c7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 439
    .local v5, "recentHistoryDefaultIconDisplayLabel":Ljava/lang/CharSequence;
    new-instance v0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;-><init>(Lcom/samsung/android/share/SShareSimpleSharing;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 440
    .local v0, "remoteShareItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    iget-object v1, p0, mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;
    invoke-static {v1}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->access$900(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v1

    iget v3, p0, mRecentHistoryIndex:I

    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 441
    iget v1, p0, mRecentHistoryIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mRecentHistoryIndex:I

    .line 442
    iget-object v1, p0, mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->notifyDataSetChanged()V

    .line 443
    return-void
.end method

.method private initRecentHistoryList()V
    .registers 49

    .prologue
    .line 459
    move-object/from16 v0, p0

    iget-object v5, v0, mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, mGridRecentHistory:Landroid/widget/HorizontalListView;

    if-nez v5, :cond_d

    .line 644
    :cond_c
    :goto_c
    return-void

    .line 463
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    if-eqz v5, :cond_23

    move-object/from16 v0, p0

    iget-object v5, v0, mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->access$900(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_23

    .line 464
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, clearRecentHistoryList(Z)V

    .line 466
    :cond_23
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, mRecentHistoryIndex:I

    .line 467
    move-object/from16 v0, p0

    iget v5, v0, mRecentContactsListCount:I

    const/4 v6, 0x1

    if-lt v5, v6, :cond_3f9

    .line 468
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050204

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v0, v5

    move/from16 v42, v0

    .line 469
    .local v42, "textWidth":F
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050205

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v0, v5

    move/from16 v39, v0

    .line 470
    .local v39, "textLandWidth":F
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0105

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v0, v5

    move/from16 v25, v0

    .line 471
    .local v25, "maxLineNum":F
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1cd

    const/4 v14, 0x1

    .line 472
    .local v14, "bLandscape":Z
    :goto_77
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10408c7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v35

    .line 473
    .local v35, "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    new-instance v36, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;-><init>(Lcom/samsung/android/share/SShareSimpleSharing;Ljava/lang/CharSequence;)V

    .line 474
    .local v36, "remoteShareItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->access$900(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, mRecentHistoryIndex:I

    move-object/from16 v0, v36

    invoke-interface {v5, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 475
    move-object/from16 v0, p0

    iget v5, v0, mRecentHistoryIndex:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, mRecentHistoryIndex:I

    .line 478
    invoke-direct/range {p0 .. p0}, getFontScale()F

    move-result v21

    .line 479
    .local v21, "fontScale":F
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050273

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v0, v5

    move/from16 v16, v0

    .line 480
    .local v16, "defaultSize":F
    const/4 v5, 0x0

    mul-float v6, v16, v21

    move-object/from16 v0, p0

    iget-object v9, v0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v5, v6, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v41

    .line 482
    .local v41, "textSize":F
    move-object/from16 v0, p0

    iget-boolean v5, v0, mGroupNameOldConcept:Z

    if-eqz v5, :cond_db

    .line 489
    :cond_db
    const/16 v38, 0x0

    .local v38, "tempContactsIndex":I
    :goto_dd
    move-object/from16 v0, p0

    iget v5, v0, mRecentContactsListCount:I

    move/from16 v0, v38

    if-ge v0, v5, :cond_430

    sget v5, RECENT_CONTACTS_LIST_MAX_COUNT:I

    move/from16 v0, v38

    if-ge v0, v5, :cond_430

    .line 490
    const/16 v33, 0x0

    .line 491
    .local v33, "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    const/16 v34, 0x0

    .line 492
    .local v34, "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    const-string v23, ""

    .line 493
    .local v23, "groupNameOrg":Ljava/lang/String;
    const-string v22, ""

    .line 494
    .local v22, "groupName":Ljava/lang/String;
    const/16 v32, 0x0

    .line 497
    .local v32, "photoIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v5, v0, mRecentContactsItemContactsCountInGroup:[I

    aget v5, v5, v38

    const/4 v6, 0x1

    if-le v5, v6, :cond_3b9

    .line 498
    move-object/from16 v0, p0

    iget-object v5, v0, mRecentContactsListName:Ljava/util/ArrayList;

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/CharSequence;

    .line 499
    .local v27, "nameStr":Ljava/lang/CharSequence;
    const-string v19, ""

    .line 500
    .local v19, "emptyStr":Ljava/lang/CharSequence;
    const-string v18, ""

    .line 502
    .local v18, "emptyGroupStr":Ljava/lang/String;
    const/16 v45, 0x0

    .line 503
    .local v45, "totalW":F
    const/16 v29, 0x0

    .line 505
    .local v29, "needEllipsis":Z
    new-instance v40, Landroid/text/TextPaint;

    invoke-direct/range {v40 .. v40}, Landroid/text/TextPaint;-><init>()V

    .line 506
    .local v40, "textPaint":Landroid/text/TextPaint;
    invoke-virtual/range {v40 .. v41}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 507
    const-string/jumbo v5, "sec-roboto-light"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 508
    const/4 v5, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 509
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, v40

    iput v5, v0, Landroid/text/TextPaint;->density:F

    .line 513
    if-eqz v14, :cond_1d0

    .line 514
    mul-float v5, v39, v25

    sub-float v13, v5, v45

    .line 518
    .local v13, "availNameW":F
    :goto_14c
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    invoke-static {v0, v1, v13, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v17

    .line 520
    .local v17, "ellipsizedNameStr":Ljava/lang/CharSequence;
    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, ELLIPSIS_NORMAL:[C

    const/4 v10, 0x0

    aget-char v9, v9, v10

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_180

    .line 521
    const/16 v29, 0x1

    .line 525
    :cond_180
    move-object/from16 v0, p0

    iget-boolean v5, v0, mGroupNameOldConcept:Z

    if-eqz v5, :cond_1dc

    .line 527
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    const v6, 0x10408c8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 528
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v19, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, mRecentContactsItemContactsCountInGroup:[I

    aget v9, v9, v38

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    move-object/from16 v0, v23

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 536
    :goto_1ac
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v30

    .line 537
    .local v30, "othersLength":I
    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v31, v0

    .line 538
    .local v31, "othersW":[F
    move-object/from16 v0, v40

    move-object/from16 v1, v18

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    move-result v11

    .line 541
    .local v11, "arrayNum":I
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1c2
    move/from16 v0, v24

    if-ge v0, v11, :cond_200

    .line 542
    aget v5, v31, v24

    add-float v45, v45, v5

    .line 541
    add-int/lit8 v24, v24, 0x1

    goto :goto_1c2

    .line 471
    .end local v11    # "arrayNum":I
    .end local v13    # "availNameW":F
    .end local v14    # "bLandscape":Z
    .end local v16    # "defaultSize":F
    .end local v17    # "ellipsizedNameStr":Ljava/lang/CharSequence;
    .end local v18    # "emptyGroupStr":Ljava/lang/String;
    .end local v19    # "emptyStr":Ljava/lang/CharSequence;
    .end local v21    # "fontScale":F
    .end local v22    # "groupName":Ljava/lang/String;
    .end local v23    # "groupNameOrg":Ljava/lang/String;
    .end local v24    # "i":I
    .end local v27    # "nameStr":Ljava/lang/CharSequence;
    .end local v29    # "needEllipsis":Z
    .end local v30    # "othersLength":I
    .end local v31    # "othersW":[F
    .end local v32    # "photoIcon":Landroid/graphics/drawable/Drawable;
    .end local v33    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    .end local v34    # "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    .end local v35    # "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    .end local v36    # "remoteShareItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .end local v38    # "tempContactsIndex":I
    .end local v40    # "textPaint":Landroid/text/TextPaint;
    .end local v41    # "textSize":F
    .end local v45    # "totalW":F
    :cond_1cd
    const/4 v14, 0x0

    goto/16 :goto_77

    .line 516
    .restart local v14    # "bLandscape":Z
    .restart local v16    # "defaultSize":F
    .restart local v18    # "emptyGroupStr":Ljava/lang/String;
    .restart local v19    # "emptyStr":Ljava/lang/CharSequence;
    .restart local v21    # "fontScale":F
    .restart local v22    # "groupName":Ljava/lang/String;
    .restart local v23    # "groupNameOrg":Ljava/lang/String;
    .restart local v27    # "nameStr":Ljava/lang/CharSequence;
    .restart local v29    # "needEllipsis":Z
    .restart local v32    # "photoIcon":Landroid/graphics/drawable/Drawable;
    .restart local v33    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    .restart local v34    # "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    .restart local v35    # "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    .restart local v36    # "remoteShareItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .restart local v38    # "tempContactsIndex":I
    .restart local v40    # "textPaint":Landroid/text/TextPaint;
    .restart local v41    # "textSize":F
    .restart local v45    # "totalW":F
    :cond_1d0
    mul-float v5, v42, v25

    sub-float v5, v5, v45

    move-object/from16 v0, p0

    iget v6, v0, mTunedMargin:F

    sub-float v13, v5, v6

    .restart local v13    # "availNameW":F
    goto/16 :goto_14c

    .line 531
    .restart local v17    # "ellipsizedNameStr":Ljava/lang/CharSequence;
    :cond_1dc
    if-eqz v29, :cond_1fd

    .line 532
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, mRecentContactsItemContactsCountInGroup:[I

    aget v6, v6, v38

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 534
    :cond_1fd
    move-object/from16 v18, v23

    goto :goto_1ac

    .line 545
    .restart local v11    # "arrayNum":I
    .restart local v24    # "i":I
    .restart local v30    # "othersLength":I
    .restart local v31    # "othersW":[F
    :cond_200
    if-eqz v14, :cond_2da

    .line 546
    mul-float v5, v39, v25

    sub-float v13, v5, v45

    .line 554
    :goto_206
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    invoke-static {v0, v1, v13, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v17

    .line 556
    if-eqz v14, :cond_2ee

    .line 557
    move-object/from16 v0, p0

    iget-boolean v5, v0, mGroupNameOldConcept:Z

    if-eqz v5, :cond_25e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, ELLIPSIS_NORMAL:[C

    const/4 v9, 0x0

    aget-char v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25e

    .line 558
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v6, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, ELLIPSIS_NORMAL:[C

    const/4 v9, 0x0

    aget-char v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 560
    :cond_25e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 612
    .end local v11    # "arrayNum":I
    .end local v13    # "availNameW":F
    .end local v17    # "ellipsizedNameStr":Ljava/lang/CharSequence;
    .end local v18    # "emptyGroupStr":Ljava/lang/String;
    .end local v19    # "emptyStr":Ljava/lang/CharSequence;
    .end local v24    # "i":I
    .end local v27    # "nameStr":Ljava/lang/CharSequence;
    .end local v29    # "needEllipsis":Z
    .end local v30    # "othersLength":I
    .end local v31    # "othersW":[F
    .end local v40    # "textPaint":Landroid/text/TextPaint;
    .end local v45    # "totalW":F
    :cond_275
    :goto_275
    move-object/from16 v0, p0

    iget-object v5, v0, mRecentContactsListThumb:Ljava/util/List;

    move/from16 v0, v38

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object/from16 v0, p0

    iget-object v5, v0, mRecentContactsItemContactsCountInGroup:[I

    aget v7, v5, v38

    move-object/from16 v0, p0

    iget-object v5, v0, mRecentContactsId:[J

    aget-wide v8, v5, v38

    const/4 v10, -0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, getRecentIconType([BIJI)I

    move-result v7

    .line 614
    .local v7, "iconType":I
    const/4 v5, 0x3

    if-ne v7, v5, :cond_3c7

    .line 615
    move-object/from16 v0, p0

    iget-object v5, v0, mRecentContactsListThumb:Ljava/util/List;

    move/from16 v0, v38

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, makeContactPhotoImage([B)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 626
    .end local v32    # "photoIcon":Landroid/graphics/drawable/Drawable;
    .local v8, "photoIcon":Landroid/graphics/drawable/Drawable;
    :goto_2a9
    move-object/from16 v0, p0

    iget-object v5, v0, mRecentContactsItemContactsCountInGroup:[I

    aget v5, v5, v38

    const/4 v6, 0x1

    if-le v5, v6, :cond_3ed

    .line 627
    new-instance v4, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    move-object/from16 v5, p0

    move-object/from16 v6, v33

    move-object/from16 v9, v34

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;-><init>(Lcom/samsung/android/share/SShareSimpleSharing;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 631
    .local v4, "recentHistoryItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    :goto_2bd
    move-object/from16 v0, p0

    iget-object v5, v0, mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->access$900(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, mRecentHistoryIndex:I

    invoke-interface {v5, v6, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 632
    move-object/from16 v0, p0

    iget v5, v0, mRecentHistoryIndex:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, mRecentHistoryIndex:I

    .line 489
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_dd

    .line 548
    .end local v4    # "recentHistoryItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .end local v7    # "iconType":I
    .end local v8    # "photoIcon":Landroid/graphics/drawable/Drawable;
    .restart local v11    # "arrayNum":I
    .restart local v13    # "availNameW":F
    .restart local v17    # "ellipsizedNameStr":Ljava/lang/CharSequence;
    .restart local v18    # "emptyGroupStr":Ljava/lang/String;
    .restart local v19    # "emptyStr":Ljava/lang/CharSequence;
    .restart local v24    # "i":I
    .restart local v27    # "nameStr":Ljava/lang/CharSequence;
    .restart local v29    # "needEllipsis":Z
    .restart local v30    # "othersLength":I
    .restart local v31    # "othersW":[F
    .restart local v32    # "photoIcon":Landroid/graphics/drawable/Drawable;
    .restart local v40    # "textPaint":Landroid/text/TextPaint;
    .restart local v45    # "totalW":F
    :cond_2da
    if-eqz v29, :cond_2e8

    .line 549
    mul-float v5, v42, v25

    sub-float v5, v5, v45

    move-object/from16 v0, p0

    iget v6, v0, mTunedMargin:F

    sub-float v13, v5, v6

    goto/16 :goto_206

    .line 551
    :cond_2e8
    mul-float v5, v42, v25

    sub-float v13, v5, v45

    goto/16 :goto_206

    .line 565
    :cond_2ee
    invoke-interface/range {v27 .. v27}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v26

    .line 566
    .local v26, "nameLength":I
    move/from16 v0, v26

    new-array v0, v0, [F

    move-object/from16 v28, v0

    .line 567
    .local v28, "nameW":[F
    invoke-interface/range {v27 .. v27}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    move-object/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    move-result v12

    .line 568
    .local v12, "arrayNum1":I
    const/16 v46, 0x0

    .line 569
    .local v46, "totalW1":F
    const/16 v47, 0x0

    .line 570
    .local v47, "totalW2":F
    const/16 v20, 0x0

    .line 571
    .local v20, "firstLineCount":I
    const-string v43, ""

    .line 572
    .local v43, "tmpStr":Ljava/lang/String;
    const-string v44, ""

    .line 574
    .local v44, "tmpStr2":Ljava/lang/String;
    const/16 v24, 0x0

    :goto_314
    move/from16 v0, v24

    if-ge v0, v12, :cond_322

    .line 575
    aget v5, v28, v24

    add-float v46, v46, v5

    .line 576
    cmpl-float v5, v46, v42

    if-ltz v5, :cond_364

    .line 577
    move/from16 v20, v24

    .line 582
    :cond_322
    move-object/from16 v33, v43

    .line 584
    if-lez v20, :cond_275

    .line 586
    if-eqz v29, :cond_382

    .line 587
    sub-float v5, v42, v45

    move-object/from16 v0, p0

    iget v6, v0, mTunedMargin:F

    sub-float v37, v5, v6

    .line 591
    .local v37, "secondLineWidth":F
    :goto_330
    move/from16 v24, v20

    :goto_332
    move/from16 v0, v24

    if-ge v0, v12, :cond_33e

    .line 592
    aget v5, v28, v24

    add-float v47, v47, v5

    .line 593
    cmpl-float v5, v47, v37

    if-ltz v5, :cond_385

    .line 599
    :cond_33e
    if-eqz v29, :cond_3a3

    .line 600
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, ELLIPSIS_NORMAL:[C

    const/4 v9, 0x0

    aget-char v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 605
    :goto_360
    move-object/from16 v34, v44

    goto/16 :goto_275

    .line 580
    .end local v37    # "secondLineWidth":F
    :cond_364
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 574
    add-int/lit8 v24, v24, 0x1

    goto :goto_314

    .line 589
    :cond_382
    sub-float v37, v42, v45

    .restart local v37    # "secondLineWidth":F
    goto :goto_330

    .line 596
    :cond_385
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 591
    add-int/lit8 v24, v24, 0x1

    goto :goto_332

    .line 602
    :cond_3a3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    goto :goto_360

    .line 609
    .end local v11    # "arrayNum":I
    .end local v12    # "arrayNum1":I
    .end local v13    # "availNameW":F
    .end local v17    # "ellipsizedNameStr":Ljava/lang/CharSequence;
    .end local v18    # "emptyGroupStr":Ljava/lang/String;
    .end local v19    # "emptyStr":Ljava/lang/CharSequence;
    .end local v20    # "firstLineCount":I
    .end local v24    # "i":I
    .end local v26    # "nameLength":I
    .end local v27    # "nameStr":Ljava/lang/CharSequence;
    .end local v28    # "nameW":[F
    .end local v29    # "needEllipsis":Z
    .end local v30    # "othersLength":I
    .end local v31    # "othersW":[F
    .end local v37    # "secondLineWidth":F
    .end local v40    # "textPaint":Landroid/text/TextPaint;
    .end local v43    # "tmpStr":Ljava/lang/String;
    .end local v44    # "tmpStr2":Ljava/lang/String;
    .end local v45    # "totalW":F
    .end local v46    # "totalW1":F
    .end local v47    # "totalW2":F
    :cond_3b9
    move-object/from16 v0, p0

    iget-object v5, v0, mRecentContactsListName:Ljava/util/ArrayList;

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    .end local v33    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    check-cast v33, Ljava/lang/CharSequence;

    .restart local v33    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    goto/16 :goto_275

    .line 617
    .restart local v7    # "iconType":I
    :cond_3c7
    const/4 v5, 0x2

    if-eq v7, v5, :cond_43e

    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_43e

    .line 618
    const/4 v5, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    .line 619
    .local v15, "c":C
    invoke-static {v15}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v5

    if-eqz v5, :cond_43e

    .line 620
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, makeBitmapWithText(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .end local v32    # "photoIcon":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "photoIcon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2a9

    .line 629
    .end local v15    # "c":C
    :cond_3ed
    new-instance v4, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, v33

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;-><init>(Lcom/samsung/android/share/SShareSimpleSharing;Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .restart local v4    # "recentHistoryItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    goto/16 :goto_2bd

    .line 635
    .end local v4    # "recentHistoryItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .end local v7    # "iconType":I
    .end local v8    # "photoIcon":Landroid/graphics/drawable/Drawable;
    .end local v14    # "bLandscape":Z
    .end local v16    # "defaultSize":F
    .end local v21    # "fontScale":F
    .end local v22    # "groupName":Ljava/lang/String;
    .end local v23    # "groupNameOrg":Ljava/lang/String;
    .end local v25    # "maxLineNum":F
    .end local v33    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    .end local v34    # "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    .end local v35    # "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    .end local v36    # "remoteShareItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .end local v38    # "tempContactsIndex":I
    .end local v39    # "textLandWidth":F
    .end local v41    # "textSize":F
    .end local v42    # "textWidth":F
    :cond_3f9
    move-object/from16 v0, p0

    iget v5, v0, mRecentContactsListCount:I

    if-nez v5, :cond_430

    .line 636
    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10408c7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v33

    .line 637
    .restart local v33    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    new-instance v4, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v4, v0, v1}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;-><init>(Lcom/samsung/android/share/SShareSimpleSharing;Ljava/lang/CharSequence;)V

    .line 638
    .restart local v4    # "recentHistoryItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    # getter for: Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->mRecentHistoryList:Ljava/util/List;
    invoke-static {v5}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->access$900(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, mRecentHistoryIndex:I

    invoke-interface {v5, v6, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 639
    move-object/from16 v0, p0

    iget v5, v0, mRecentHistoryIndex:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, mRecentHistoryIndex:I

    .line 642
    .end local v4    # "recentHistoryItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .end local v33    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    :cond_430
    move-object/from16 v0, p0

    iget-object v5, v0, mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v5}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->notifyDataSetChanged()V

    .line 643
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, mListupCompleted:Z

    goto/16 :goto_c

    .restart local v7    # "iconType":I
    .restart local v14    # "bLandscape":Z
    .restart local v16    # "defaultSize":F
    .restart local v21    # "fontScale":F
    .restart local v22    # "groupName":Ljava/lang/String;
    .restart local v23    # "groupNameOrg":Ljava/lang/String;
    .restart local v25    # "maxLineNum":F
    .restart local v32    # "photoIcon":Landroid/graphics/drawable/Drawable;
    .restart local v33    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    .restart local v34    # "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    .restart local v35    # "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    .restart local v36    # "remoteShareItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .restart local v38    # "tempContactsIndex":I
    .restart local v39    # "textLandWidth":F
    .restart local v41    # "textSize":F
    .restart local v42    # "textWidth":F
    :cond_43e
    move-object/from16 v8, v32

    .end local v32    # "photoIcon":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "photoIcon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2a9
.end method

.method private makeBitmapWithText(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 673
    const/4 v3, 0x0

    .line 674
    .local v3, "drawableIcon":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050200

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 675
    .local v4, "iconSize":I
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050201

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v7, v8

    .line 677
    .local v7, "textSize":F
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 678
    .local v5, "textBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 680
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 681
    .local v2, "circlePaint":Landroid/graphics/Paint;
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1060122

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 682
    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 683
    div-int/lit8 v8, v4, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v4, 0x2

    int-to-float v10, v10

    invoke-virtual {v1, v8, v9, v10, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 685
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 686
    .local v6, "textPaint":Landroid/graphics/Paint;
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 687
    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 688
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1060123

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 690
    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 691
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 692
    .local v0, "bounds":Landroid/graphics/Rect;
    const/4 v8, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v6, p2, v8, v9, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 694
    div-int/lit8 v8, v4, 0x2

    int-to-float v8, v8

    mul-int/lit8 v9, v4, 0x3

    div-int/lit8 v9, v9, 0x4

    int-to-float v9, v9

    invoke-virtual {v1, p2, v8, v9, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 696
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v3, v8, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 698
    .restart local v3    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    return-object v3
.end method

.method private makeContactPhotoImage([B)Landroid/graphics/drawable/Drawable;
    .registers 14
    .param p1, "contactsThumbnailByteArray"    # [B

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x0

    .line 708
    if-nez p1, :cond_6

    move-object v2, v7

    .line 736
    :goto_5
    return-object v2

    .line 712
    :cond_6
    const/4 v3, 0x0

    .line 713
    .local v3, "mask":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 714
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 715
    .local v6, "photo":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 716
    .local v4, "orgThumb":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 718
    .local v2, "drawableIcon":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10804b6

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 721
    const/4 v8, 0x0

    array-length v9, p1

    invoke-static {p1, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 723
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v10, 0x1

    invoke-static {v4, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 725
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 727
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 728
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v6, v11, v11, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 730
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 731
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 732
    invoke-virtual {v1, v3, v11, v11, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 733
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 735
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v2, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 736
    .restart local v2    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_5
.end method


# virtual methods
.method public buildUpSimpleSharingData()V
    .registers 3

    .prologue
    .line 297
    invoke-virtual {p0}, shouldShowRecentHistoryView()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 298
    invoke-virtual {p0}, sendRequestRecentContactsHistoryList()V

    .line 299
    iget-object v0, p0, mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->notifyDataSetChanged()V

    .line 300
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 304
    :goto_15
    return-void

    .line 302
    :cond_16
    invoke-direct {p0}, initRecentHistoryDefault()V

    goto :goto_15
.end method

.method public getRecentHistoryIntent(I)Landroid/content/Intent;
    .registers 10
    .param p1, "position"    # I

    .prologue
    .line 331
    iget-object v4, p0, mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 332
    .local v3, "targetIntent":Landroid/content/Intent;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.coreapps.rshare.action.REQUESTSEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, mRecentHistoryIntent:Landroid/content/Intent;

    .line 333
    iget-object v4, p0, mRecentHistoryIntent:Landroid/content/Intent;

    const/high16 v5, 0x4000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 334
    iget-object v4, p0, mRecentHistoryIntent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.INTENT"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 336
    iget-object v4, p0, mExtraIntentList:Ljava/util/List;

    if-eqz v4, :cond_40

    .line 338
    iget-object v4, p0, mExtraIntentList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 340
    .local v2, "nSize":I
    new-array v1, v2, [Landroid/content/Intent;

    .line 341
    .local v1, "initialIntents":[Landroid/content/Intent;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2a
    if-ge v0, v2, :cond_39

    .line 342
    iget-object v4, p0, mExtraIntentList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    aput-object v4, v1, v0

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 344
    :cond_39
    iget-object v4, p0, mRecentHistoryIntent:Landroid/content/Intent;

    const-string v5, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 347
    .end local v0    # "i":I
    .end local v1    # "initialIntents":[Landroid/content/Intent;
    .end local v2    # "nSize":I
    :cond_40
    if-lez p1, :cond_50

    .line 348
    iget-object v4, p0, mRecentHistoryIntent:Landroid/content/Intent;

    const-string/jumbo v5, "recipientdataids"

    iget-object v6, p0, mRecipientDataId:[Ljava/lang/String;

    add-int/lit8 v7, p1, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    :cond_50
    iget-object v4, p0, mRecentHistoryIntent:Landroid/content/Intent;

    return-object v4
.end method

.method public getRecentHistoryListAdapter()Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    return-object v0
.end method

.method public hasExtraIntentUriInfo()Z
    .registers 5

    .prologue
    .line 266
    iget-object v3, p0, mExtraIntentList:Ljava/util/List;

    if-eqz v3, :cond_2c

    .line 267
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v3, p0, mExtraIntentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2c

    .line 268
    const/4 v2, 0x0

    .line 269
    .local v2, "uri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 270
    .local v0, "extraBundle":Landroid/os/Bundle;
    iget-object v3, p0, mExtraIntentList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_29

    .line 272
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2    # "uri":Landroid/net/Uri;
    check-cast v2, Landroid/net/Uri;

    .line 273
    .restart local v2    # "uri":Landroid/net/Uri;
    if-eqz v2, :cond_29

    .line 274
    const/4 v3, 0x1

    .line 279
    .end local v0    # "extraBundle":Landroid/os/Bundle;
    .end local v1    # "i":I
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_28
    return v3

    .line 267
    .restart local v0    # "extraBundle":Landroid/os/Bundle;
    .restart local v1    # "i":I
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 279
    .end local v0    # "extraBundle":Landroid/os/Bundle;
    .end local v1    # "i":I
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2c
    const/4 v3, 0x0

    goto :goto_28
.end method

.method public isEasySignUpCertificated()Z
    .registers 2

    .prologue
    .line 317
    sget-boolean v0, mEasySignUpCertificated:Z

    return v0
.end method

.method public isRemoteShareServiceEnabled()Z
    .registers 2

    .prologue
    .line 324
    sget-boolean v0, mRemoteShareServiceEnabled:Z

    return v0
.end method

.method public recentHistoryDefaultGridItemClick(I)V
    .registers 6
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 391
    packed-switch p1, :pswitch_data_34

    .line 409
    :goto_4
    return-void

    .line 393
    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 395
    const-string v2, "fromOOBE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 396
    const-string v2, "agreeMarketing"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 397
    const-string v2, "AuthRequestFrom"

    const-string/jumbo v3, "shareVia"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    :try_start_23
    iget-object v2, p0, mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_29
    .catch Landroid/content/ActivityNotFoundException; {:try_start_23 .. :try_end_29} :catch_2a

    goto :goto_4

    .line 400
    :catch_2a
    move-exception v0

    .line 401
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SShareSimpleSharing"

    const-string v3, "Easy signUp agent is not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 391
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public recentHistoryGridItemClick(I)V
    .registers 8
    .param p1, "position"    # I

    .prologue
    .line 357
    invoke-virtual {p0}, getRecentHistoryListAdapter()Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    move-result-object v4

    if-nez v4, :cond_7

    .line 385
    :goto_6
    return-void

    .line 363
    :cond_7
    iget-object v4, p0, mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v4}, Lcom/samsung/android/share/SShareCommon;->getSupportLogging()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    .line 365
    new-instance v3, Lcom/samsung/android/share/SShareLogging;

    iget-object v4, p0, mContext:Landroid/content/Context;

    iget-object v5, p0, mOrigIntent:Landroid/content/Intent;

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/share/SShareLogging;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 366
    .local v3, "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    invoke-direct {p0, p1}, getRecentHistoryInfo(I)Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    move-result-object v4

    iget v2, v4, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->iconType:I

    .line 368
    .local v2, "iconType":I
    packed-switch v2, :pswitch_data_40

    .line 373
    const-string/jumbo v0, "personal"

    .line 377
    .local v0, "detailInfo":Ljava/lang/String;
    :goto_25
    const-string v4, "EASY"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/share/SShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .end local v0    # "detailInfo":Ljava/lang/String;
    .end local v2    # "iconType":I
    .end local v3    # "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    :cond_2a
    :try_start_2a
    iget-object v4, p0, mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, getRecentHistoryIntent(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_33
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2a .. :try_end_33} :catch_34

    goto :goto_6

    .line 382
    :catch_34
    move-exception v1

    .line 383
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v4, "SShareSimpleSharing"

    const-string v5, "RecentHistoryGridItemClick : startActivity failed!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 370
    .end local v1    # "ex":Landroid/content/ActivityNotFoundException;
    .restart local v2    # "iconType":I
    .restart local v3    # "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    :pswitch_3d
    const-string v0, "group"

    .line 371
    .restart local v0    # "detailInfo":Ljava/lang/String;
    goto :goto_25

    .line 368
    :pswitch_data_40
    .packed-switch 0x2
        :pswitch_3d
    .end packed-switch
.end method

.method public registerRecentContactsReceiver()V
    .registers 4

    .prologue
    .line 239
    invoke-direct {p0}, checkEasySignUpCertificated()V

    .line 240
    invoke-direct {p0}, checkSSharingRecentContactExisted()V

    .line 241
    invoke-direct {p0}, checkRemoteShareServiceEnabled()V

    .line 243
    invoke-virtual {p0}, shouldShowRecentHistoryView()Z

    move-result v1

    if-eqz v1, :cond_2b

    sget-boolean v1, mRemoteShareServiceEnabled:Z

    if-eqz v1, :cond_2b

    iget-boolean v1, p0, mIsRecentContactsReceiverRegistered:Z

    if-nez v1, :cond_2b

    .line 244
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 245
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.coreapps.rshare.responserecentgroupcontacts"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 247
    const/4 v1, 0x1

    iput-boolean v1, p0, mIsRecentContactsReceiverRegistered:Z

    .line 250
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2b
    return-void
.end method

.method public sendRequestRecentContactsHistoryList()V
    .registers 3

    .prologue
    .line 229
    invoke-virtual {p0}, registerRecentContactsReceiver()V

    .line 231
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.rshare.requestrecentgroupcontacts"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 233
    return-void
.end method

.method public setSimpleSharingView(Landroid/widget/HorizontalListView;Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 5
    .param p1, "view"    # Landroid/widget/HorizontalListView;
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 286
    iput-object p1, p0, mGridRecentHistory:Landroid/widget/HorizontalListView;

    .line 287
    iget-object v0, p0, mGridRecentHistory:Landroid/widget/HorizontalListView;

    if-eqz v0, :cond_12

    .line 288
    iget-object v0, p0, mGridRecentHistory:Landroid/widget/HorizontalListView;

    iget-object v1, p0, mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 289
    iget-object v0, p0, mGridRecentHistory:Landroid/widget/HorizontalListView;

    invoke-virtual {v0, p2}, Landroid/widget/HorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 291
    :cond_12
    return-void
.end method

.method public shouldShowRecentHistoryView()Z
    .registers 2

    .prologue
    .line 310
    sget-boolean v0, mEasySignUpCertificated:Z

    if-eqz v0, :cond_a

    sget-boolean v0, mSSharingRecentContactExisted:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public unregisterRecentContactsReceiver()V
    .registers 3

    .prologue
    .line 256
    iget-boolean v0, p0, mIsRecentContactsReceiverRegistered:Z

    if-eqz v0, :cond_e

    .line 257
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 258
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsRecentContactsReceiverRegistered:Z

    .line 260
    :cond_e
    return-void
.end method
