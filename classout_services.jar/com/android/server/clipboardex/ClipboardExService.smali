.class public Lcom/android/server/clipboardex/ClipboardExService;
.super Landroid/sec/clipboard/IClipboardService$Stub;
.source "ClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;,
        Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;,
        Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;
    }
.end annotation


# static fields
.field private static SEC_FLOATING_FEATURE_VIEWSYSTEM_CLIPBOARD_UI_SERVICE:Z = false

.field private static final TAG:Ljava/lang/String; = "ClipboardExService"

.field private static final mHasKnox:Z

.field private static sService:Landroid/content/IClipboard;


# instance fields
.field private final CLIPS_INFO:Ljava/lang/String;

.field private final CLIP_ADD_DELETED_ITEM_BROADCAST:Ljava/lang/String;

.field private KNOX_PASTE_FLAG:Z

.field private final KNOX_VERSION:Ljava/lang/String;

.field private final MSG_COPY_URI:I

.field private final MSG_DELETE_TEMP_FILE:I

.field private final MSG_DISMISS_DIALOG:I

.field private final MSG_SHOW_DIALOG:I

.field private final MSG_START_SERVICE:I

.field private final MSG_UPDATE_DIALOG:I

.field private clipPickerDataList:Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;

.field private mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field private mClipBoardDataUiEventImp:Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;

.field private mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

.field private mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

.field private mClipboardFormatList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardFormatListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/IClipboardFormatListener;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserContext:Landroid/content/Context;

.field private mEnableFormatId:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsCalledPasteApp:Z

.field private mPersonaManager:Landroid/os/PersonaManager;

.field private mRCPManager:Landroid/os/RCPManager;

.field private mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

.field private mUm:Landroid/os/IUserManager;

.field private mWorkingUiInterfaceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 133
    const/4 v0, 0x0

    sput-object v0, sService:Landroid/content/IClipboard;

    .line 134
    const-string/jumbo v0, "ro.config.knox"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "v30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, mHasKnox:Z

    .line 162
    const/4 v0, 0x1

    sput-boolean v0, SEC_FLOATING_FEATURE_VIEWSYSTEM_CLIPBOARD_UI_SERVICE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 671
    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardService$Stub;-><init>()V

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mClipboardFormatListenerList:Ljava/util/ArrayList;

    .line 140
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, mClipboardFormatList:Ljava/util/HashMap;

    .line 145
    new-instance v2, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;

    invoke-direct {v2, p0, v3}, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;-><init>(Lcom/android/server/clipboardex/ClipboardExService;Lcom/android/server/clipboardex/ClipboardExService$1;)V

    iput-object v2, p0, clipPickerDataList:Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;

    .line 146
    const-string v2, "2.0"

    iput-object v2, p0, KNOX_VERSION:Ljava/lang/String;

    .line 147
    iput-boolean v4, p0, KNOX_PASTE_FLAG:Z

    .line 148
    const-string v2, "com.samsung.knox.clipboard.clipremoved"

    iput-object v2, p0, CLIP_ADD_DELETED_ITEM_BROADCAST:Ljava/lang/String;

    .line 149
    const-string v2, "clips.info"

    iput-object v2, p0, CLIPS_INFO:Ljava/lang/String;

    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mWorkingUiInterfaceList:Ljava/util/ArrayList;

    .line 153
    new-instance v2, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;

    invoke-direct {v2, p0, v3}, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;-><init>(Lcom/android/server/clipboardex/ClipboardExService;Lcom/android/server/clipboardex/ClipboardExService$1;)V

    iput-object v2, p0, mClipBoardDataUiEventImp:Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;

    .line 155
    iput-boolean v4, p0, mIsCalledPasteApp:Z

    .line 158
    iput-object v3, p0, mUm:Landroid/os/IUserManager;

    .line 159
    iput-object v3, p0, mPersonaManager:Landroid/os/PersonaManager;

    .line 160
    iput-object v3, p0, mRCPManager:Landroid/os/RCPManager;

    .line 1705
    iput v5, p0, MSG_SHOW_DIALOG:I

    .line 1706
    iput v6, p0, MSG_START_SERVICE:I

    .line 1707
    iput v7, p0, MSG_UPDATE_DIALOG:I

    .line 1708
    const/4 v2, 0x4

    iput v2, p0, MSG_DISMISS_DIALOG:I

    .line 1709
    const/4 v2, 0x5

    iput v2, p0, MSG_DELETE_TEMP_FILE:I

    .line 1710
    const/4 v2, 0x6

    iput v2, p0, MSG_COPY_URI:I

    .line 1794
    new-instance v2, Lcom/android/server/clipboardex/ClipboardExService$4;

    invoke-direct {v2, p0}, Lcom/android/server/clipboardex/ClipboardExService$4;-><init>(Lcom/android/server/clipboardex/ClipboardExService;)V

    iput-object v2, p0, mHandler:Landroid/os/Handler;

    .line 672
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 673
    new-instance v2, Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/16 v3, 0x14

    invoke-direct {v2, v3, p1, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;-><init>(ILandroid/content/Context;Z)V

    iput-object v2, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    .line 674
    new-instance v2, Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/16 v3, 0x14

    invoke-direct {v2, v3, p1, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;-><init>(ILandroid/content/Context;Z)V

    iput-object v2, p0, mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    .line 676
    iget-object v2, p0, mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Text"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    iget-object v2, p0, mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Bitmap"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    iget-object v2, p0, mClipboardFormatList:Ljava/util/HashMap;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "HTMLFlagment"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    const-string/jumbo v2, "user"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Landroid/os/IUserManager;

    iput-object v2, p0, mUm:Landroid/os/IUserManager;

    .line 681
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    iput-object v2, p0, mPersonaManager:Landroid/os/PersonaManager;

    .line 682
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RCPManager;

    iput-object v2, p0, mRCPManager:Landroid/os/RCPManager;

    .line 684
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 685
    .local v0, "knoxFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "enterprise.container.remove.progress"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 687
    const-string v2, "com.samsung.knox.clipboard.sync"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 689
    const-string/jumbo v2, "enterprise.container.uninstalled"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 690
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 691
    iget-object v2, p0, mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;

    invoke-direct {v3, p0}, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;-><init>(Lcom/android/server/clipboardex/ClipboardExService;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 694
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 695
    .local v1, "userFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 696
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 697
    const-string v2, "android.intent.action.SECONTAINER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 698
    const-string v2, "android.intent.action.SECONTAINER_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 699
    iget-object v2, p0, mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/clipboardex/ClipboardExService$1;

    invoke-direct {v3, p0}, Lcom/android/server/clipboardex/ClipboardExService$1;-><init>(Lcom/android/server/clipboardex/ClipboardExService;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 723
    return-void
.end method

.method private ListChange(I)V
    .registers 8
    .param p1, "state"    # I

    .prologue
    .line 2232
    iget-object v5, p0, mWorkingUiInterfaceList:Ljava/util/ArrayList;

    if-eqz v5, :cond_2f

    .line 2233
    const/4 v4, 0x0

    .line 2234
    .local v4, "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    iget-object v5, p0, mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2235
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v3, :cond_2f

    .line 2236
    iget-object v5, p0, mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    check-cast v4, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 2238
    .restart local v4    # "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :try_start_16
    invoke-interface {v4, p1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataListChange(I)V
    :try_end_19
    .catch Landroid/os/DeadObjectException; {:try_start_16 .. :try_end_19} :catch_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_2a

    .line 2235
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 2239
    :catch_1c
    move-exception v0

    .line 2240
    .local v0, "de":Landroid/os/DeadObjectException;
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 2241
    iget-object v5, p0, mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2242
    add-int/lit8 v1, v1, -0x1

    .line 2243
    add-int/lit8 v3, v3, -0x1

    .line 2246
    goto :goto_19

    .line 2244
    .end local v0    # "de":Landroid/os/DeadObjectException;
    :catch_2a
    move-exception v2

    .line 2245
    .local v2, "re":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_19

    .line 2249
    .end local v1    # "i":I
    .end local v2    # "re":Landroid/os/RemoteException;
    .end local v3    # "size":I
    .end local v4    # "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :cond_2f
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/clipboardex/ClipboardExService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1}, doSyncForFota(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/clipboardex/ClipboardExService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 130
    invoke-direct {p0}, isKioskEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 130
    iget-object v0, p0, mCurrentUserContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/clipboardex/ClipboardExService;Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 130
    iput-object p1, p0, mCurrentUserContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 130
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 130
    invoke-direct {p0, p1}, updateDataListChange(Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/clipboardex/ClipboardExService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/ClipboardUIManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 130
    iget-object v0, p0, mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardUIManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # Landroid/sec/clipboard/ClipboardUIManager;

    .prologue
    .line 130
    iput-object p1, p0, mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/clipboardex/ClipboardExService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 130
    iget v0, p0, mEnableFormatId:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 130
    iget-object v0, p0, mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    return-object v0
.end method

.method static synthetic access$1900()Z
    .registers 1

    .prologue
    .line 130
    sget-boolean v0, SEC_FLOATING_FEATURE_VIEWSYSTEM_CLIPBOARD_UI_SERVICE:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 130
    iget-object v0, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 130
    iget-object v0, p0, mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/clipboardex/ClipboardExService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 130
    iget-boolean v0, p0, KNOX_PASTE_FLAG:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/clipboardex/ClipboardExService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, KNOX_PASTE_FLAG:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/clipboardex/ClipboardExService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1}, ListChange(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/clipboardex/ClipboardExService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, mIsCalledPasteApp:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/ClipboardConverter;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 130
    iget-object v0, p0, mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/ClipboardConverter;)Landroid/sec/clipboard/ClipboardConverter;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;
    .param p1, "x1"    # Landroid/sec/clipboard/ClipboardConverter;

    .prologue
    .line 130
    iput-object p1, p0, mClipboardConverter:Landroid/sec/clipboard/ClipboardConverter;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/clipboardex/ClipboardExService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 130
    invoke-direct {p0}, getPersonaManager()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/os/PersonaManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/clipboardex/ClipboardExService;

    .prologue
    .line 130
    iget-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    return-object v0
.end method

.method private addData(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 15
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v8, 0x0

    .line 1253
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v9, :cond_c

    .line 1254
    const-string v9, "ClipboardExService"

    const-string v10, "addData.."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_c
    invoke-virtual {p0}, getPersonaId()I

    move-result v7

    .line 1258
    .local v7, "userId":I
    const/16 v9, 0x64

    if-lt v7, v9, :cond_18

    const/16 v9, 0xc2

    if-le v7, v9, :cond_1b

    .line 1259
    :cond_18
    invoke-direct {p0}, loadSEContainer()V

    .line 1261
    :cond_1b
    invoke-direct {p0, p2}, checkEquals(Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v9

    if-eqz v9, :cond_4a

    .line 1262
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v9, :cond_41

    .line 1263
    const-string v9, "ClipboardExService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The data are the same.:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :cond_41
    const/4 v9, 0x5

    if-ne p1, v9, :cond_5f

    move-object v6, p2

    .line 1267
    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 1268
    .local v6, "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-direct {p0, v6}, deleteSameClipboardDataUri(Landroid/sec/clipboard/data/list/ClipboardDataUri;)V

    .line 1291
    .end local v6    # "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :cond_4a
    invoke-virtual {p2, p1}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 1292
    .local v0, "addItem":Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v0, :cond_86

    .line 1293
    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/android/server/clipboardex/ClipboardExService$3;

    invoke-direct {v9, p0, v0, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService$3;-><init>(Lcom/android/server/clipboardex/ClipboardExService;Landroid/sec/clipboard/data/ClipboardData;ILandroid/sec/clipboard/data/ClipboardData;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 1362
    const/4 v8, 0x1

    .line 1367
    .end local v0    # "addItem":Landroid/sec/clipboard/data/ClipboardData;
    :cond_5e
    :goto_5e
    return v8

    .line 1270
    :cond_5f
    packed-switch p1, :pswitch_data_94

    goto :goto_5e

    :pswitch_63
    move-object v5, p2

    .line 1272
    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 1273
    .local v5, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getBitmapPath()Ljava/lang/String;

    move-result-object v4

    .line 1274
    .local v4, "imagePath":Ljava/lang/String;
    const-string v1, ""

    .line 1275
    .local v1, "extraFilePath":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->HasExtraData()Z

    move-result v9

    if-eqz v9, :cond_76

    .line 1276
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->getExtraDataPath()Ljava/lang/String;

    move-result-object v1

    .line 1278
    :cond_76
    invoke-direct {p0, v4, v1}, deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    .end local v1    # "extraFilePath":Ljava/lang/String;
    .end local v4    # "imagePath":Ljava/lang/String;
    .end local v5    # "trgData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    :pswitch_7a
    move-object v3, p2

    .line 1281
    check-cast v3, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    .line 1282
    .local v3, "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getFirstImgPath()Ljava/lang/String;

    move-result-object v2

    .line 1283
    .local v2, "firstImagePath":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-direct {p0, v2, v9}, deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    .line 1364
    .end local v2    # "firstImagePath":Ljava/lang/String;
    .end local v3    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    .restart local v0    # "addItem":Landroid/sec/clipboard/data/ClipboardData;
    :cond_86
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v9, :cond_5e

    .line 1365
    const-string v9, "ClipboardExService"

    const-string/jumbo v10, "data is null"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 1270
    nop

    :pswitch_data_94
    .packed-switch 0x3
        :pswitch_63
        :pswitch_7a
    .end packed-switch
.end method

.method private canReadAcrossProfiles()Z
    .registers 8

    .prologue
    .line 2126
    const/4 v1, 0x1

    .line 2128
    .local v1, "canCrossCopyPaste":Z
    invoke-virtual {p0}, isEnabled()Z

    move-result v4

    if-nez v4, :cond_33

    .line 2130
    :try_start_7
    invoke-virtual {p0}, getPersonaId()I

    move-result v3

    .line 2131
    .local v3, "userId":I
    iget-object v4, p0, mUm:Landroid/os/IUserManager;

    invoke-interface {v4, v3}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v0

    .line 2132
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v4, "no_cross_profile_copy_paste"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_34

    const/4 v1, 0x1

    .line 2133
    :goto_1b
    const-string v4, "ClipboardExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canReadAcrossProfiles : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_33} :catch_36

    .line 2138
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "userId":I
    :cond_33
    :goto_33
    return v1

    .line 2132
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v3    # "userId":I
    :cond_34
    const/4 v1, 0x0

    goto :goto_1b

    .line 2134
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "userId":I
    :catch_36
    move-exception v2

    .line 2135
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_33
.end method

.method private checkEquals(Landroid/sec/clipboard/data/ClipboardData;)Z
    .registers 16
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 956
    const/4 v6, 0x0

    .line 957
    .local v6, "result":Z
    iget-object v11, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v11}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    .line 958
    .local v0, "dataSize":I
    iget-object v11, p0, mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v11}, Landroid/sec/clipboard/data/ClipboardDataMgr;->sharedSize()I

    move-result v8

    .line 959
    .local v8, "sharedSize":I
    const-string v11, "ClipboardExService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mClipDataMgr : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mSharedClipDataMgr : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    if-ge v0, v9, :cond_4a

    move v1, v9

    .line 963
    .local v1, "isEmptyDataList":Z
    :goto_35
    invoke-virtual {p0}, isKnoxTwoEnabled()Z

    move-result v3

    .line 964
    .local v3, "isKnoxTwo":Z
    if-ge v8, v9, :cond_4c

    move v2, v9

    .line 965
    .local v2, "isEmptySharedSize":Z
    :goto_3c
    if-eqz v1, :cond_4e

    if-nez v3, :cond_4e

    .line 966
    const-string v9, "ClipboardExService"

    const-string/jumbo v10, "owner and empty data"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 994
    :goto_49
    return v5

    .end local v1    # "isEmptyDataList":Z
    .end local v2    # "isEmptySharedSize":Z
    .end local v3    # "isKnoxTwo":Z
    :cond_4a
    move v1, v10

    .line 962
    goto :goto_35

    .restart local v1    # "isEmptyDataList":Z
    .restart local v3    # "isKnoxTwo":Z
    :cond_4c
    move v2, v10

    .line 964
    goto :goto_3c

    .line 968
    .restart local v2    # "isEmptySharedSize":Z
    :cond_4e
    if-eqz v1, :cond_88

    if-eqz v3, :cond_88

    .line 969
    if-eqz v2, :cond_5e

    .line 970
    const-string v9, "ClipboardExService"

    const-string/jumbo v10, "knox and empty both data"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 971
    goto :goto_49

    .line 973
    :cond_5e
    iget-object v9, p0, mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget-object v11, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9, v11, v10}, Landroid/sec/clipboard/data/ClipboardDataMgr;->replaceWithTargetForUser(Landroid/sec/clipboard/data/ClipboardDataMgr;I)V

    .line 974
    iget-object v9, p0, mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9, v10}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v7

    .line 975
    .local v7, "sharedData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v7, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 976
    .local v5, "newResult":Z
    const-string v9, "ClipboardExService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "block in checkEquals : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 981
    .end local v5    # "newResult":Z
    .end local v7    # "sharedData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_88
    iget-object v9, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9, v10}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    .line 982
    .local v4, "latestData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v9

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v11

    if-eq v9, v11, :cond_9a

    move v5, v6

    .line 983
    goto :goto_49

    .line 986
    :cond_9a
    invoke-virtual {v4, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 988
    if-eqz v6, :cond_b3

    .line 989
    iget-object v9, p0, mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget-object v11, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9, v11, v10}, Landroid/sec/clipboard/data/ClipboardDataMgr;->replaceWithTargetForUser(Landroid/sec/clipboard/data/ClipboardDataMgr;I)V

    .line 990
    iget-object v9, p0, mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->reAddForKnox(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 991
    const-string v9, "ClipboardExService"

    const-string v10, "completed reAddForKnox method"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    move v5, v6

    .line 994
    goto :goto_49
.end method

.method private clearDataList()V
    .registers 5

    .prologue
    .line 1944
    iget-object v1, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v1, :cond_23

    .line 1945
    iget-object v1, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeAll()Z

    move-result v0

    .line 1946
    .local v0, "bRes":Z
    const-string v1, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearDataList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    .end local v0    # "bRes":Z
    :goto_22
    return-void

    .line 1948
    :cond_23
    const-string v1, "ClipboardExService"

    const-string v2, "clearDataList"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method private copyFileToOwner(ILjava/lang/String;)Ljava/io/File;
    .registers 9
    .param p1, "persId"    # I
    .param p2, "personaPath"    # Ljava/lang/String;

    .prologue
    .line 594
    const/4 v1, 0x0

    .line 595
    .local v1, "tempFile":Ljava/io/File;
    const-string v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyFileToUserZero : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :try_start_23
    iget-object v3, p0, mRCPManager:Landroid/os/RCPManager;

    if-nez v3, :cond_34

    .line 598
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "rcp"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RCPManager;

    iput-object v3, p0, mRCPManager:Landroid/os/RCPManager;

    .line 600
    :cond_34
    iget-object v3, p0, mRCPManager:Landroid/os/RCPManager;

    const/4 v4, 0x0

    const-string v5, "/data/clipboard/deletedClips.xml"

    invoke-virtual {v3, p1, p2, v4, v5}, Landroid/os/RCPManager;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    .line 601
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/clipboard/deletedClips.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_43} :catch_45

    .end local v1    # "tempFile":Ljava/io/File;
    .local v2, "tempFile":Ljava/io/File;
    move-object v1, v2

    .line 605
    .end local v2    # "tempFile":Ljava/io/File;
    .restart local v1    # "tempFile":Ljava/io/File;
    :goto_44
    return-object v1

    .line 602
    :catch_45
    move-exception v0

    .line 603
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "inside file copy exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method

.method private copyUriFromClipboardSaveService(Ljava/lang/String;)V
    .registers 5
    .param p1, "uriPath"    # Ljava/lang/String;

    .prologue
    .line 1407
    iget-object v2, p0, mContext:Landroid/content/Context;

    if-eqz v2, :cond_23

    .line 1408
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1409
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1410
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_23

    if-eqz v1, :cond_23

    .line 1411
    const-string/jumbo v2, "uriPath"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1413
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1414
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1417
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "message":Landroid/os/Message;
    :cond_23
    return-void
.end method

.method private deleteSameClipboardDataUri(Landroid/sec/clipboard/data/list/ClipboardDataUri;)V
    .registers 9
    .param p1, "uriData"    # Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .prologue
    .line 1372
    invoke-virtual {p0}, getDataSize()I

    move-result v0

    .line 1374
    .local v0, "count":I
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_21

    .line 1375
    const-string v4, "ClipboardExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteSameClipboardDataUri :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    :cond_21
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_23
    if-ltz v3, :cond_4c

    .line 1378
    iget-object v4, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 1379
    .local v2, "data":Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3a

    .line 1380
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->GetProtectState()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1377
    :cond_3a
    :goto_3a
    add-int/lit8 v3, v3, -0x1

    goto :goto_23

    :cond_3d
    move-object v1, v2

    .line 1383
    check-cast v1, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 1384
    .local v1, "currentDataUri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 1385
    iget-object v4, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    goto :goto_3a

    .line 1390
    .end local v1    # "currentDataUri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    .end local v2    # "data":Landroid/sec/clipboard/data/ClipboardData;
    :cond_4c
    return-void
.end method

.method private deleteTempFileFromClipboardSaveService(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "extraFilePath"    # Ljava/lang/String;

    .prologue
    .line 1393
    iget-object v2, p0, mContext:Landroid/content/Context;

    if-eqz v2, :cond_33

    if-eqz p1, :cond_33

    const-string v2, "com.samsung.clipboardsaveservice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1394
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1395
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1396
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_33

    if-eqz v1, :cond_33

    .line 1397
    const-string/jumbo v2, "deletePath"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    const-string/jumbo v2, "extraDataPath"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1400
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1401
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1404
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "message":Landroid/os/Message;
    :cond_33
    return-void
.end method

.method private doSyncForFota(I)V
    .registers 11
    .param p1, "id"    # I

    .prologue
    .line 571
    const/4 v2, 0x0

    .line 572
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/clipboard"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/shared/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 573
    .local v4, "sharedPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 574
    .local v3, "sharedFolder":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_90

    .line 575
    const-string v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "doSyncForFota : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/user/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/com.sec.knox.bridge/shared_prefs/deletedClips.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, "deletedClipsPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 578
    .local v0, "delClipsFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8d

    .line 579
    invoke-direct {p0, p1, v1}, copyFileToOwner(ILjava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 580
    .local v5, "tempFile":Ljava/io/File;
    if-eqz v5, :cond_91

    .line 581
    invoke-direct {p0, v5}, parseXML(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v2

    .line 582
    invoke-virtual {p0, v5}, deleteDir(Ljava/io/File;)V

    .line 583
    iget-object v6, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v6, p1, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->updateFotaClips(ILjava/util/ArrayList;)V

    .line 584
    const-string v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateFotaClips : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    .end local v5    # "tempFile":Ljava/io/File;
    :cond_8d
    :goto_8d
    invoke-virtual {p0, v3}, deleteDir(Ljava/io/File;)V

    .line 591
    .end local v0    # "delClipsFile":Ljava/io/File;
    .end local v1    # "deletedClipsPath":Ljava/lang/String;
    :cond_90
    return-void

    .line 586
    .restart local v0    # "delClipsFile":Ljava/io/File;
    .restart local v1    # "deletedClipsPath":Ljava/lang/String;
    .restart local v5    # "tempFile":Ljava/io/File;
    :cond_91
    const-string v6, "ClipboardExService"

    const-string/jumbo v7, "tempfile is null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d
.end method

.method private dump()V
    .registers 6

    .prologue
    .line 1928
    iget-object v2, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    .line 1929
    .local v1, "size":I
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_11

    .line 1930
    const-string v2, "ClipboardExService"

    const-string v3, "====================================================="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    :cond_11
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    if-ge v0, v1, :cond_47

    .line 1933
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->INFO_DEBUG:Z

    if-eqz v2, :cond_44

    .line 1934
    const-string v2, "ClipboardExService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1937
    :cond_47
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_52

    .line 1938
    const-string v2, "ClipboardExService"

    const-string v3, "====================================================="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    :cond_52
    return-void
.end method

.method private getPersonaManager()Z
    .registers 3

    .prologue
    .line 2220
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-eqz v0, :cond_15

    iget-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    if-nez v0, :cond_15

    .line 2221
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    iput-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    .line 2224
    :cond_15
    iget-object v0, p0, mPersonaManager:Landroid/os/PersonaManager;

    if-eqz v0, :cond_1b

    .line 2225
    const/4 v0, 0x1

    .line 2228
    :goto_1a
    return v0

    .line 2227
    :cond_1b
    const-string v0, "ClipboardExService"

    const-string/jumbo v1, "personaManager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private getSEAMSCategory(Ljava/lang/String;)I
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1069
    const/4 v4, 0x0

    .line 1070
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    const/4 v1, -0x1

    .line 1071
    .local v1, "category":I
    iget-object v6, p0, mContext:Landroid/content/Context;

    if-eqz v6, :cond_36

    .line 1072
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 1077
    const/4 v0, 0x0

    .line 1078
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x0

    .line 1079
    .local v5, "seinfo":Ljava/lang/String;
    if-eqz v4, :cond_1a

    if-eqz p1, :cond_1a

    .line 1081
    const/16 v6, 0x80

    :try_start_12
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-interface {v4, p1, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_3f

    move-result-object v0

    .line 1086
    :cond_1a
    :goto_1a
    if-nez v0, :cond_44

    .line 1087
    const-string v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "appInfo is null for packageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    :goto_34
    move v2, v1

    .line 1097
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "category":I
    .end local v5    # "seinfo":Ljava/lang/String;
    .local v2, "category":I
    :goto_35
    return v2

    .line 1074
    .end local v2    # "category":I
    .restart local v1    # "category":I
    :cond_36
    const-string v6, "ClipboardExService"

    const-string v7, "Cannot get context for package manager"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 1075
    .end local v1    # "category":I
    .restart local v2    # "category":I
    goto :goto_35

    .line 1082
    .end local v2    # "category":I
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "category":I
    .restart local v5    # "seinfo":Ljava/lang/String;
    :catch_3f
    move-exception v3

    .line 1083
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a

    .line 1089
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_44
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 1090
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 1091
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_6f

    const-string v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSEAMSCategory, before checking range, category:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", seinfo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_6f
    const/16 v6, 0x66

    if-eq v1, v6, :cond_77

    const/16 v6, 0xc9

    if-lt v1, v6, :cond_7b

    :cond_77
    const/16 v6, 0x1f4

    if-le v1, v6, :cond_7c

    .line 1093
    :cond_7b
    const/4 v1, 0x0

    .line 1095
    :cond_7c
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_34

    const-string v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getSEAMSCategory, category:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", seinfo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method private static getService()Landroid/content/IClipboard;
    .registers 3

    .prologue
    .line 1912
    sget-object v1, sService:Landroid/content/IClipboard;

    if-eqz v1, :cond_7

    .line 1913
    sget-object v1, sService:Landroid/content/IClipboard;

    .line 1924
    .local v0, "b":Landroid/os/IBinder;
    :goto_6
    return-object v1

    .line 1915
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_7
    const-string v1, "clipboard"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1916
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v1

    sput-object v1, sService:Landroid/content/IClipboard;

    .line 1918
    sget-object v1, sService:Landroid/content/IClipboard;

    if-nez v1, :cond_22

    .line 1919
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_22

    .line 1920
    const-string v1, "ClipboardExService"

    const-string v2, "Original clipboard service is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    :cond_22
    sget-object v1, sService:Landroid/content/IClipboard;

    goto :goto_6
.end method

.method private getUserId()I
    .registers 5

    .prologue
    .line 166
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 167
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 168
    .local v1, "userId":I
    invoke-static {v1}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 169
    const/4 v1, 0x0

    .line 170
    const-string v2, "ClipboardExService"

    const-string/jumbo v3, "getUserId is BBC"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_17
    return v1
.end method

.method private isClipboardAllowed(ZI)I
    .registers 13
    .param p1, "showToast"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 2144
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-nez v0, :cond_a

    move v0, v7

    .line 2163
    :goto_9
    return v0

    .line 2148
    :cond_a
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2149
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 2150
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isClipboardAllowedAsUser"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2151
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_55

    .line 2153
    :try_start_2f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2154
    const-string/jumbo v0, "isClipboardAllowedAsUser"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_43
    .catchall {:try_start_2f .. :try_end_43} :catchall_50

    move-result v0

    if-nez v0, :cond_4b

    .line 2158
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_9

    :cond_4b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 2163
    goto :goto_9

    .line 2158
    :catchall_50
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_55
    move v0, v7

    .line 2161
    goto :goto_9
.end method

.method private isClipboardShareAllowed(I)I
    .registers 12
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 2170
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-nez v0, :cond_a

    move v0, v7

    .line 2189
    :goto_9
    return v0

    .line 2174
    :cond_a
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2175
    .local v1, "uri":Landroid/net/Uri;
    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 2176
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isClipboardShareAllowedAsUser"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2177
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_4e

    .line 2179
    :try_start_28
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2180
    const-string/jumbo v0, "isClipboardShareAllowedAsUser"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3c
    .catchall {:try_start_28 .. :try_end_3c} :catchall_49

    move-result v0

    if-nez v0, :cond_44

    .line 2184
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_9

    :cond_44
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 2189
    goto :goto_9

    .line 2184
    :catchall_49
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4e
    move v0, v7

    .line 2187
    goto :goto_9
.end method

.method private isEnabled(I)Z
    .registers 16
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v12, -0x1

    .line 2072
    const/4 v6, 0x0

    .line 2073
    .local v6, "result":Z
    const-wide/16 v4, -0x1

    .line 2075
    .local v4, "origId":J
    if-eqz p1, :cond_72

    .line 2076
    :try_start_7
    iget-object v8, p0, mUm:Landroid/os/IUserManager;

    if-nez v8, :cond_16

    .line 2077
    const-string/jumbo v8, "user"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    check-cast v8, Landroid/os/IUserManager;

    iput-object v8, p0, mUm:Landroid/os/IUserManager;

    .line 2079
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2080
    iget-object v8, p0, mUm:Landroid/os/IUserManager;

    invoke-interface {v8, p1}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 2081
    .local v7, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    .line 2082
    .local v3, "isManagedProfile":Z
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v2

    .line 2083
    .local v2, "isKnoxWorkspace":Z
    if-eqz v3, :cond_2c

    if-eqz v2, :cond_70

    :cond_2c
    const/4 v6, 0x1

    .line 2084
    :goto_2d
    const-string v8, "ClipboardExService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isEnabled, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_68} :catch_74
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_68} :catch_88
    .catchall {:try_start_7 .. :try_end_68} :catchall_9c

    .line 2095
    .end local v2    # "isKnoxWorkspace":Z
    .end local v3    # "isManagedProfile":Z
    .end local v7    # "ui":Landroid/content/pm/UserInfo;
    :goto_68
    cmp-long v8, v4, v12

    if-eqz v8, :cond_6f

    .line 2096
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2099
    :cond_6f
    :goto_6f
    return v6

    .line 2083
    .restart local v2    # "isKnoxWorkspace":Z
    .restart local v3    # "isManagedProfile":Z
    .restart local v7    # "ui":Landroid/content/pm/UserInfo;
    :cond_70
    const/4 v6, 0x0

    goto :goto_2d

    .line 2086
    .end local v2    # "isKnoxWorkspace":Z
    .end local v3    # "isManagedProfile":Z
    .end local v7    # "ui":Landroid/content/pm/UserInfo;
    :cond_72
    const/4 v6, 0x1

    goto :goto_68

    .line 2088
    :catch_74
    move-exception v0

    .line 2089
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_75
    const-string v8, "ClipboardExService"

    const-string/jumbo v9, "isEnabled() RemoteException!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_80
    .catchall {:try_start_75 .. :try_end_80} :catchall_9c

    .line 2095
    cmp-long v8, v4, v12

    if-eqz v8, :cond_6f

    .line 2096
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6f

    .line 2091
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_88
    move-exception v1

    .line 2092
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_89
    const-string v8, "ClipboardExService"

    const-string/jumbo v9, "isEnabled() Exception!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_94
    .catchall {:try_start_89 .. :try_end_94} :catchall_9c

    .line 2095
    cmp-long v8, v4, v12

    if-eqz v8, :cond_6f

    .line 2096
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6f

    .line 2095
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_9c
    move-exception v8

    cmp-long v9, v4, v12

    if-eqz v9, :cond_a4

    .line 2096
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_a4
    throw v8
.end method

.method private isKioskEnabled()Z
    .registers 5

    .prologue
    .line 656
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 657
    .local v0, "bRet":Z
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_23

    .line 658
    const-string v1, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isKioskEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_23
    return v0
.end method

.method private isKnoxKeyguardShowing()Z
    .registers 7

    .prologue
    .line 249
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 252
    .local v0, "ident":J
    invoke-virtual {p0}, getPersonaId()I

    move-result v2

    .line 254
    .local v2, "userId":I
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_25

    .line 255
    const-string v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isKnoxKeyguardShowing getPersonaId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 259
    invoke-direct {p0}, getPersonaManager()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 260
    iget-object v3, p0, mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v3, v2}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v3, v2}, Landroid/os/PersonaManager;->getKeyguardShowState(I)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 261
    const/4 v3, 0x1

    .line 265
    :goto_3f
    return v3

    :cond_40
    const/4 v3, 0x0

    goto :goto_3f
.end method

.method private isManagedProfile(I)Z
    .registers 14
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v10, -0x1

    .line 2103
    const-wide/16 v4, -0x1

    .line 2104
    .local v4, "origId":J
    const/4 v2, 0x0

    .line 2106
    .local v2, "isManagedProfile":Z
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2107
    iget-object v7, p0, mUm:Landroid/os/IUserManager;

    invoke-interface {v7, p1}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 2108
    .local v6, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_12} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_32
    .catchall {:try_start_5 .. :try_end_12} :catchall_48

    move-result v2

    .line 2118
    cmp-long v7, v4, v10

    if-eqz v7, :cond_1a

    .line 2119
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1a
    move v3, v2

    .line 2121
    .end local v2    # "isManagedProfile":Z
    .end local v6    # "ui":Landroid/content/pm/UserInfo;
    .local v3, "isManagedProfile":I
    :goto_1b
    return v3

    .line 2109
    .end local v3    # "isManagedProfile":I
    .restart local v2    # "isManagedProfile":Z
    :catch_1c
    move-exception v0

    .line 2110
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1d
    const-string v7, "ClipboardExService"

    const-string/jumbo v8, "isManagedProfile() remote exception! "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_48

    .line 2112
    const/4 v2, 0x0

    .line 2118
    cmp-long v7, v4, v10

    if-eqz v7, :cond_30

    .line 2119
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_30
    move v3, v2

    .line 2121
    .restart local v3    # "isManagedProfile":I
    goto :goto_1b

    .line 2113
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "isManagedProfile":I
    :catch_32
    move-exception v1

    .line 2114
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_33
    const-string v7, "ClipboardExService"

    const-string/jumbo v8, "isManagedProfile() Exception!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_48

    .line 2116
    const/4 v2, 0x0

    .line 2118
    cmp-long v7, v4, v10

    if-eqz v7, :cond_46

    .line 2119
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_46
    move v3, v2

    .line 2121
    .restart local v3    # "isManagedProfile":I
    goto :goto_1b

    .line 2118
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v3    # "isManagedProfile":I
    :catchall_48
    move-exception v7

    cmp-long v7, v4, v10

    if-eqz v7, :cond_50

    .line 2119
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_50
    move v3, v2

    .line 2121
    .restart local v3    # "isManagedProfile":I
    goto :goto_1b
.end method

.method private isSEContainerClipboardEnabled(I)I
    .registers 12
    .param p1, "category"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 2193
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-nez v0, :cond_a

    move v0, v7

    .line 2213
    :goto_9
    return v0

    .line 2196
    :cond_a
    const-string v0, "content://com.sec.knox.provider/SeamsPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2197
    .local v1, "uri":Landroid/net/Uri;
    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 2198
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "getSEContainerClipboardMode"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2199
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_6d

    .line 2201
    :try_start_28
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2202
    const-string/jumbo v0, "getSEContainerClipboardMode"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3c
    .catchall {:try_start_28 .. :try_end_3c} :catchall_68

    move-result v0

    if-nez v0, :cond_44

    .line 2206
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_9

    :cond_44
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2212
    const-string v0, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSEContainerClipboardEnabled for secontainerid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 2213
    goto :goto_9

    .line 2206
    :catchall_68
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2209
    :cond_6d
    const-string v0, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSEContainerClipboardEnabled for secontainerid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is -1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 2210
    goto/16 :goto_9
.end method

.method private isServiceCallFromOther()Z
    .registers 9

    .prologue
    .line 231
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 232
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 234
    .local v1, "callingUser":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 237
    .local v4, "ident":J
    iget-object v3, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getCurrentListOwnerUid()I

    move-result v2

    .line 239
    .local v2, "currUser":I
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_2e

    const-string v3, "ClipboardExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isServiceCallFromOther getPersonaId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_2e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 242
    if-eq v1, v2, :cond_35

    .line 243
    const/4 v3, 0x1

    .line 245
    :goto_34
    return v3

    :cond_35
    const/4 v3, 0x0

    goto :goto_34
.end method

.method private loadSEContainer()V
    .registers 11

    .prologue
    .line 1033
    const/4 v0, 0x0

    .line 1035
    .local v0, "callerName":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_30

    move-result-object v0

    .line 1039
    :goto_d
    const/4 v1, 0x0

    .line 1040
    .local v1, "cat":I
    if-eqz v0, :cond_2f

    .line 1041
    invoke-direct {p0, v0}, getSEAMSCategory(Ljava/lang/String;)I

    move-result v1

    .line 1042
    if-gez v1, :cond_39

    .line 1043
    const-string v7, "ClipboardExService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadSEContainer, error getting SEAMS category value, cat: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :cond_2f
    :goto_2f
    return-void

    .line 1036
    .end local v1    # "cat":I
    :catch_30
    move-exception v2

    .line 1037
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "ClipboardExService"

    const-string v8, "Exception in getPackageNameFromAppProcesses"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 1044
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "cat":I
    :cond_39
    if-lez v1, :cond_75

    .line 1045
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1046
    .local v4, "ident":J
    invoke-direct {p0, v1}, isSEContainerClipboardEnabled(I)I

    move-result v3

    .line 1047
    .local v3, "status":I
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1048
    const/4 v7, 0x1

    if-ne v3, v7, :cond_4f

    .line 1049
    iget-object v7, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->loadSEContainerDB(I)V

    goto :goto_2f

    .line 1051
    :cond_4f
    const-string v7, "ClipboardExService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadSEContainter, cat:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", doesn\'t have clipboard enabled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget-object v7, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->loadSEContainerDB(I)V

    goto :goto_2f

    .line 1055
    .end local v3    # "status":I
    .end local v4    # "ident":J
    :cond_75
    invoke-virtual {p0}, getPersonaId()I

    move-result v6

    .line 1057
    .local v6, "userId":I
    if-eqz v6, :cond_95

    const/16 v7, 0x64

    if-ge v6, v7, :cond_95

    invoke-direct {p0, v6}, isManagedProfile(I)Z

    move-result v7

    if-nez v7, :cond_95

    .line 1058
    const-string v7, "ClipboardExService"

    const-string/jumbo v8, "loadSEContainer, before loadSECOntainerDB, isManagedProfile should have been false, cat :  userId + 1000"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    iget-object v7, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    add-int/lit16 v8, v6, 0x3e8

    invoke-virtual {v7, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->loadSEContainerDB(I)V

    goto :goto_2f

    .line 1062
    :cond_95
    iget-object v7, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->loadSEContainerDB(I)V

    goto :goto_2f
.end method

.method private parseXML(Ljava/io/File;)Ljava/util/ArrayList;
    .registers 15
    .param p1, "delClip"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 612
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 613
    .local v2, "factoryObject":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v6, 0x0

    .line 614
    .local v6, "myparser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_8
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 615
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 616
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_dd
    .catchall {:try_start_8 .. :try_end_15} :catchall_b8

    .line 617
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    :try_start_16
    invoke-interface {v6, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 619
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 620
    .local v1, "event":I
    :goto_1d
    const/4 v9, 0x1

    if-eq v1, v9, :cond_7a

    .line 621
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 622
    .local v7, "name":Ljava/lang/String;
    packed-switch v1, :pswitch_data_e2

    .line 634
    :cond_27
    :goto_27
    :pswitch_27
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 635
    goto :goto_1d

    .line 626
    :pswitch_2c
    const-string v9, "boolean"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 627
    const/4 v9, 0x0

    const-string/jumbo v10, "name"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 628
    .local v8, "val":Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    const-string v9, "ClipboardExService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "parseXML : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_58} :catch_59
    .catchall {:try_start_16 .. :try_end_58} :catchall_da

    goto :goto_27

    .line 636
    .end local v1    # "event":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "val":Ljava/lang/String;
    :catch_59
    move-exception v0

    move-object v3, v4

    .line 637
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_5b
    :try_start_5b
    const-string v9, "ClipboardExService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "inside exception for parsexml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_5b .. :try_end_74} :catchall_b8

    .line 639
    if-eqz v3, :cond_79

    .line 641
    :try_start_76
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_9d

    .line 647
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_79
    :goto_79
    return-object v5

    .line 639
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "event":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_7a
    if-eqz v4, :cond_e0

    .line 641
    :try_start_7c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_81

    move-object v3, v4

    .line 644
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_79

    .line 642
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_81
    move-exception v0

    .line 643
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v9, "ClipboardExService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "inside exception for Close connection"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 644
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_79

    .line 642
    .end local v1    # "event":I
    :catch_9d
    move-exception v0

    .line 643
    const-string v9, "ClipboardExService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "inside exception for Close connection"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 639
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_b8
    move-exception v9

    :goto_b9
    if-eqz v3, :cond_be

    .line 641
    :try_start_bb
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_be} :catch_bf

    .line 644
    :cond_be
    :goto_be
    throw v9

    .line 642
    :catch_bf
    move-exception v0

    .line 643
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v10, "ClipboardExService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "inside exception for Close connection"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_be

    .line 639
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_da
    move-exception v9

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_b9

    .line 636
    :catch_dd
    move-exception v0

    goto/16 :goto_5b

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "event":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_e0
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_79

    .line 622
    :pswitch_data_e2
    .packed-switch 0x2
        :pswitch_27
        :pswitch_2c
    .end packed-switch
.end method

.method private registerKnoxModeChangeObserver()V
    .registers 7

    .prologue
    .line 727
    const-string v3, "ClipboardExService"

    const-string v4, "ClipboardExService.registerKnoxModeChangeObserver() Registered..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :try_start_7
    const-string/jumbo v3, "persona"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 730
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersonaManagerService;

    .line 731
    .local v2, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-nez v2, :cond_1e

    .line 732
    const-string v3, "ClipboardExService"

    const-string v4, "ClipboardExService.onKnoxModeChange() pms == null...  should not happened"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :goto_1d
    return-void

    .line 736
    .restart local v0    # "b":Landroid/os/IBinder;
    .restart local v2    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_1e
    new-instance v3, Lcom/android/server/clipboardex/ClipboardExService$2;

    invoke-direct {v3, p0}, Lcom/android/server/clipboardex/ClipboardExService$2;-><init>(Lcom/android/server/clipboardex/ClipboardExService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PersonaManagerService;->registerKnoxModeChangeObserver(Landroid/content/pm/IKnoxModeChangeObserver;)Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_26} :catch_27

    goto :goto_1d

    .line 754
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v2    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :catch_27
    move-exception v1

    .line 755
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Error during calling BMS.registerKnoxModeChangeObserver(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method

.method private sendOriginalClipboardData(Landroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)V
    .registers 16
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1431
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_26

    move-object v8, p1

    .line 1432
    check-cast v8, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 1434
    .local v8, "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :try_start_a
    invoke-static {}, getService()Landroid/content/IClipboard;

    move-result-object v11

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getClipData()Landroid/content/ClipData;

    move-result-object v12

    invoke-interface {v11, v12, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1435
    sget-boolean v11, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v11, :cond_20

    .line 1436
    const-string v11, "ClipboardExService"

    const-string v12, "String was copied.(Format.TEXT)"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_20} :catch_21

    .line 1517
    .end local v8    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_20
    :goto_20
    return-void

    .line 1438
    .restart local v8    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :catch_21
    move-exception v3

    .line 1439
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    .line 1441
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_26
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_52

    .line 1442
    new-instance v8, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v8}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 1443
    .restart local v8    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    const/4 v11, 0x2

    invoke-virtual {p1, v11, v8}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    .line 1445
    :try_start_36
    invoke-static {}, getService()Landroid/content/IClipboard;

    move-result-object v11

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getClipData()Landroid/content/ClipData;

    move-result-object v12

    invoke-interface {v11, v12, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1446
    sget-boolean v11, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v11, :cond_20

    .line 1447
    const-string v11, "ClipboardExService"

    const-string v12, "String was copied.(Format.HTML)"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4c} :catch_4d

    goto :goto_20

    .line 1449
    :catch_4d
    move-exception v3

    .line 1450
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    .line 1452
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v8    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_52
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_78

    move-object v9, p1

    .line 1453
    check-cast v9, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 1455
    .local v9, "uri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :try_start_5c
    invoke-static {}, getService()Landroid/content/IClipboard;

    move-result-object v11

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getClipData()Landroid/content/ClipData;

    move-result-object v12

    invoke-interface {v11, v12, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1458
    sget-boolean v11, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v11, :cond_20

    .line 1459
    const-string v11, "ClipboardExService"

    const-string v12, "String was copied.(Format.URI)"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_72} :catch_73

    goto :goto_20

    .line 1461
    :catch_73
    move-exception v3

    .line 1462
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    .line 1464
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v9    # "uri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :cond_78
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v11

    const/4 v12, 0x6

    if-ne v11, v12, :cond_9e

    move-object v5, p1

    .line 1465
    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .line 1467
    .local v5, "intent":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    :try_start_82
    invoke-static {}, getService()Landroid/content/IClipboard;

    move-result-object v11

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getClipData()Landroid/content/ClipData;

    move-result-object v12

    invoke-interface {v11, v12, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1470
    sget-boolean v11, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v11, :cond_20

    .line 1471
    const-string v11, "ClipboardExService"

    const-string v12, "String was copied.(Format.INTENT)"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_98} :catch_99

    goto :goto_20

    .line 1473
    :catch_99
    move-exception v3

    .line 1474
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    .line 1476
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "intent":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    :cond_9e
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_f2

    move-object v7, p1

    .line 1477
    check-cast v7, Landroid/sec/clipboard/data/list/ClipboardDataUriList;

    .line 1478
    .local v7, "multiUri":Landroid/sec/clipboard/data/list/ClipboardDataUriList;
    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataUriList;->getUriList()Ljava/util/ArrayList;

    move-result-object v10

    .line 1479
    .local v10, "uries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    .line 1480
    .local v0, "N":I
    if-eqz v10, :cond_b3

    .line 1481
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1483
    :cond_b3
    const/4 v1, 0x0

    .line 1484
    .local v1, "clipData":Landroid/content/ClipData;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b5
    if-ge v4, v0, :cond_d6

    .line 1485
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .line 1486
    .local v9, "uri":Landroid/net/Uri;
    if-nez v1, :cond_cd

    .line 1487
    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12, v9}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v1

    .line 1484
    :goto_ca
    add-int/lit8 v4, v4, 0x1

    goto :goto_b5

    .line 1489
    :cond_cd
    new-instance v11, Landroid/content/ClipData$Item;

    invoke-direct {v11, v9}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v11}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_ca

    .line 1493
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_d6
    if-eqz v1, :cond_20

    .line 1494
    :try_start_d8
    invoke-static {}, getService()Landroid/content/IClipboard;

    move-result-object v11

    invoke-interface {v11, v1, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1495
    sget-boolean v11, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v11, :cond_20

    .line 1496
    const-string v11, "ClipboardExService"

    const-string v12, "String was copied.(Format.URI_LIST)"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_ea} :catch_ec

    goto/16 :goto_20

    .line 1499
    :catch_ec
    move-exception v3

    .line 1500
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_20

    .line 1502
    .end local v0    # "N":I
    .end local v1    # "clipData":Landroid/content/ClipData;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "i":I
    .end local v7    # "multiUri":Landroid/sec/clipboard/data/list/ClipboardDataUriList;
    .end local v10    # "uries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_f2
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v11

    const/16 v12, 0x8

    if-ne v11, v12, :cond_20

    move-object v6, p1

    .line 1503
    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;

    .line 1504
    .local v6, "multiType":Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleType;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    .line 1507
    .local v2, "clipdata":Landroid/content/ClipData;
    if-eqz v2, :cond_20

    .line 1508
    :try_start_103
    invoke-static {}, getService()Landroid/content/IClipboard;

    move-result-object v11

    invoke-interface {v11, v2, p2}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    .line 1509
    sget-boolean v11, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v11, :cond_20

    .line 1510
    const-string v11, "ClipboardExService"

    const-string v12, "String was copied.(Format.MULTIPLE_TYPE)"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_115} :catch_117

    goto/16 :goto_20

    .line 1513
    :catch_117
    move-exception v3

    .line 1514
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_20
.end method

.method private updateDataListChange(Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 3
    .param p1, "clip"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 1420
    const/4 v0, 0x1

    invoke-direct {p0, v0}, ListChange(I)V

    .line 1422
    if-eqz p1, :cond_d

    .line 1423
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v0

    invoke-virtual {p0, v0, p1}, ObserverUpdate(ILandroid/sec/clipboard/data/ClipboardData;)V

    .line 1425
    :cond_d
    return-void
.end method


# virtual methods
.method public AddClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .registers 4
    .param p1, "listener"    # Landroid/sec/clipboard/IClipboardFormatListener;

    .prologue
    .line 848
    iget-object v1, p0, mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v0, 0x1

    .line 849
    .local v0, "Result":Z
    :goto_9
    if-eqz v0, :cond_10

    .line 850
    iget-object v1, p0, mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    :cond_10
    return v0

    .line 848
    .end local v0    # "Result":Z
    :cond_11
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 14
    .param p1, "format"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 881
    monitor-enter p0

    .line 882
    const/4 v8, 0x1

    :try_start_4
    invoke-virtual {p0}, getPersonaId()I

    move-result v9

    invoke-direct {p0, v8, v9}, isClipboardAllowed(ZI)I

    move-result v4

    .line 883
    .local v4, "isClipboardAllowed":I
    if-nez v4, :cond_14

    .line 884
    invoke-direct {p0}, clearDataList()V

    .line 885
    monitor-exit p0

    move-object v0, v7

    .line 951
    :goto_13
    return-object v0

    .line 888
    :cond_14
    const/4 v0, 0x0

    .line 889
    .local v0, "Result":Landroid/sec/clipboard/data/ClipboardData;
    const/4 v3, 0x0

    .line 890
    .local v3, "iClipboardDataCount":I
    invoke-virtual {p0}, isKnoxTwoEnabled()Z

    move-result v5

    .line 892
    .local v5, "isKnoxTwoMode":Z
    iget-object v8, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v8, :cond_e1

    .line 894
    if-eqz v5, :cond_69

    iget-object v8, p0, mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v8, :cond_69

    .line 895
    iget-object v8, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v8

    iget-object v9, p0, mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v9}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v9

    add-int v3, v8, v9

    .line 901
    :goto_32
    if-lez v3, :cond_e1

    .line 902
    const/4 v1, 0x0

    .line 904
    .local v1, "cbData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p0}, getPersonaId()I

    move-result v8

    invoke-direct {p0, v8}, isClipboardShareAllowed(I)I

    move-result v8

    if-nez v8, :cond_76

    .line 905
    invoke-direct {p0}, loadSEContainer()V

    .line 906
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_43
    iget-object v8, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v8

    if-ge v2, v8, :cond_73

    .line 907
    iget-object v8, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v8, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v8

    invoke-virtual {v8}, Landroid/sec/clipboard/data/ClipboardData;->getCallerUid()J

    move-result-wide v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_70

    .line 908
    iget-object v7, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v7, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    monitor-exit p0

    goto :goto_13

    .line 952
    .end local v1    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    .end local v2    # "i":I
    .end local v3    # "iClipboardDataCount":I
    .end local v4    # "isClipboardAllowed":I
    .end local v5    # "isKnoxTwoMode":Z
    :catchall_66
    move-exception v7

    monitor-exit p0
    :try_end_68
    .catchall {:try_start_4 .. :try_end_68} :catchall_66

    throw v7

    .line 898
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v3    # "iClipboardDataCount":I
    .restart local v4    # "isClipboardAllowed":I
    .restart local v5    # "isKnoxTwoMode":Z
    :cond_69
    :try_start_69
    iget-object v8, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v3

    goto :goto_32

    .line 906
    .restart local v1    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v2    # "i":I
    :cond_70
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 911
    :cond_73
    monitor-exit p0

    move-object v0, v7

    goto :goto_13

    .line 917
    .end local v2    # "i":I
    :cond_76
    if-eqz v5, :cond_88

    invoke-direct {p0}, isServiceCallFromOther()Z

    move-result v8

    if-eqz v8, :cond_88

    .line 918
    const-string v8, "ClipboardExService"

    const-string v9, "ClipboardExService GetClipboardData() abnormal called!!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    monitor-exit p0

    move-object v0, v7

    goto :goto_13

    .line 922
    :cond_88
    iget-boolean v8, p0, KNOX_PASTE_FLAG:Z

    if-eqz v8, :cond_e4

    if-eqz v5, :cond_e4

    iget-object v8, p0, mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    if-eqz v8, :cond_e4

    iget-object v8, p0, mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v8

    if-lez v8, :cond_e4

    .line 923
    iget-object v7, p0, mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 924
    const-string v7, "ClipboardExService"

    const-string v8, "KNOX2 SYNC data has paste item & cbdata is SYNC item assign"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :goto_a8
    if-eqz v1, :cond_e1

    .line 940
    sget-boolean v7, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v7, :cond_d5

    .line 941
    const-string v7, "ClipboardExService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getItem id : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", input id : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_d5
    if-eq p1, v10, :cond_116

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v7

    if-eq v7, p1, :cond_116

    .line 944
    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/ClipboardData;->GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 951
    .end local v1    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_e1
    :goto_e1
    monitor-exit p0

    goto/16 :goto_13

    .line 925
    .restart local v1    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_e4
    iget-object v8, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v8

    if-lez v8, :cond_10b

    .line 927
    invoke-virtual {p0}, getPersonaId()I

    move-result v6

    .line 928
    .local v6, "userId":I
    const/16 v7, 0x64

    if-lt v6, v7, :cond_f8

    const/16 v7, 0xc2

    if-le v6, v7, :cond_fb

    .line 929
    :cond_f8
    invoke-direct {p0}, loadSEContainer()V

    .line 931
    :cond_fb
    iget-object v7, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 932
    const-string v7, "ClipboardExService"

    const-string/jumbo v8, "owner copy and paste cdData"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 934
    .end local v6    # "userId":I
    :cond_10b
    const-string v8, "ClipboardExService"

    const-string v9, "KNOX2 SYNC data has not paste item so return null "

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    monitor-exit p0
    :try_end_113
    .catchall {:try_start_69 .. :try_end_113} :catchall_66

    move-object v0, v7

    goto/16 :goto_13

    .line 946
    :cond_116
    move-object v0, v1

    goto :goto_e1
.end method

.method public GetClipboardFormatName(I)Ljava/lang/String;
    .registers 5
    .param p1, "format"    # I

    .prologue
    .line 827
    const-string v0, ""

    .line 829
    .local v0, "Result":Ljava/lang/String;
    iget-object v1, p0, mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 830
    iget-object v1, p0, mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "Result":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 832
    .restart local v0    # "Result":Ljava/lang/String;
    :cond_1a
    return-object v0
.end method

.method public IsShowUIClipboardData()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1737
    const/4 v0, 0x0

    .line 1738
    .local v0, "Result":Z
    sget-boolean v1, SEC_FLOATING_FEATURE_VIEWSYSTEM_CLIPBOARD_UI_SERVICE:Z

    if-eqz v1, :cond_f

    .line 1739
    iget-object v1, p0, mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    if-eqz v1, :cond_f

    .line 1740
    iget-object v1, p0, mClipboardUIManager:Landroid/sec/clipboard/ClipboardUIManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardUIManager;->isShowing()Z

    move-result v0

    .line 1743
    :cond_f
    return v0
.end method

.method public ObserverUpdate(ILandroid/sec/clipboard/data/ClipboardData;)V
    .registers 7
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 769
    iget-object v3, p0, mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/IClipboardFormatListener;

    .line 771
    .local v0, "Item":Landroid/sec/clipboard/IClipboardFormatListener;
    :try_start_12
    invoke-interface {v0, p1, p2}, Landroid/sec/clipboard/IClipboardFormatListener;->onNewClipboardData(ILandroid/sec/clipboard/data/ClipboardData;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    .line 772
    :catch_16
    move-exception v1

    .line 773
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 776
    .end local v0    # "Item":Landroid/sec/clipboard/IClipboardFormatListener;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1b
    return-void
.end method

.method public RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V
    .registers 2
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2260
    return-void
.end method

.method public RegistClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V
    .registers 7
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1528
    monitor-enter p0

    .line 1529
    :try_start_1
    iget-object v3, p0, mWorkingUiInterfaceList:Ljava/util/ArrayList;

    if-eqz v3, :cond_52

    .line 1530
    invoke-virtual {p0}, isKnoxTwoEnabled()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1531
    iget-object v3, p0, clipPickerDataList:Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;

    invoke-interface {p1, v3}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V

    .line 1536
    :goto_10
    iget-object v3, p0, mClipBoardDataUiEventImp:Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;

    invoke-interface {p1, v3}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataUiEvent(Landroid/sec/clipboard/IClipboardDataUiEvent;)V

    .line 1537
    const/4 v1, 0x0

    .line 1538
    .local v1, "isExist":Z
    iget-object v3, p0, mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 1539
    .local v2, "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1540
    const/4 v1, 0x1

    .line 1544
    .end local v2    # "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :cond_37
    if-nez v1, :cond_49

    .line 1545
    iget-object v3, p0, mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1554
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "isExist":Z
    :cond_3e
    :goto_3e
    monitor-exit p0

    .line 1555
    return-void

    .line 1534
    :cond_40
    iget-object v3, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-interface {p1, v3}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V

    goto :goto_10

    .line 1554
    :catchall_46
    move-exception v3

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_46

    throw v3

    .line 1547
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "isExist":Z
    :cond_49
    :try_start_49
    const-string v3, "ClipboardExService"

    const-string/jumbo v4, "exist uiInterface!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 1550
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "isExist":Z
    :cond_52
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_3e

    .line 1551
    const-string v3, "ClipboardExService"

    const-string v4, "RegistClipboardWorkingFormUiInterface is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_49 .. :try_end_5d} :catchall_46

    goto :goto_3e
.end method

.method public RegisterClipboardFormat(Ljava/lang/String;)I
    .registers 9
    .param p1, "formatName"    # Ljava/lang/String;

    .prologue
    .line 800
    const/4 v1, 0x0

    .line 802
    .local v1, "Result":I
    iget-object v5, p0, mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 803
    iget-object v5, p0, mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    add-int/lit8 v1, v5, 0x2

    .line 804
    iget-object v5, p0, mClipboardFormatList:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    :cond_1a
    :goto_1a
    return v1

    .line 806
    :cond_1b
    iget-object v5, p0, mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 807
    .local v0, "Keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 808
    .local v3, "iVal":Ljava/lang/Integer;
    iget-object v5, p0, mClipboardFormatList:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 809
    .local v4, "sValue":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_25

    .line 810
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 811
    goto :goto_1a
.end method

.method public RemoveClipboardFormatListener(Landroid/sec/clipboard/IClipboardFormatListener;)Z
    .registers 4
    .param p1, "listener"    # Landroid/sec/clipboard/IClipboardFormatListener;

    .prologue
    .line 864
    iget-object v1, p0, mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 865
    .local v0, "Result":Z
    if-eqz v0, :cond_d

    .line 866
    iget-object v1, p0, mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 868
    :cond_d
    iget-object v1, p0, mClipboardFormatListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v0, 0x1

    .line 870
    :goto_16
    return v0

    .line 868
    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public SetClipboardData(ILandroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)Z
    .registers 16
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 1109
    invoke-virtual {p0}, isEnabled()Z

    move-result v9

    if-nez v9, :cond_12

    .line 1110
    const-string v9, "ClipboardExService"

    const-string/jumbo v10, "not enabled! SetClipboardData()"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 1163
    :cond_11
    :goto_11
    return v6

    .line 1114
    :cond_12
    if-nez p2, :cond_16

    move v6, v8

    .line 1115
    goto :goto_11

    .line 1117
    :cond_16
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v9, :cond_21

    .line 1118
    const-string v9, "ClipboardExService"

    const-string v10, "==================================================================="

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :cond_21
    const/4 v6, 0x0

    .line 1121
    .local v6, "result":Z
    monitor-enter p0

    .line 1122
    :try_start_23
    sget-boolean v9, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v9, :cond_2f

    .line 1123
    const-string v9, "ClipboardExService"

    const-string/jumbo v10, "in synchronized"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_2f
    const/4 v9, 0x1

    invoke-virtual {p0}, getPersonaId()I

    move-result v10

    invoke-direct {p0, v9, v10}, isClipboardAllowed(ZI)I

    move-result v9

    if-nez v9, :cond_40

    .line 1127
    invoke-direct {p0}, clearDataList()V

    .line 1128
    monitor-exit p0

    move v6, v8

    goto :goto_11

    .line 1133
    :cond_40
    if-nez p2, :cond_45

    .line 1134
    monitor-exit p0

    move v6, v8

    goto :goto_11

    .line 1137
    :cond_45
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1138
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1139
    .local v1, "callingUser":I
    iget-object v8, p0, mContext:Landroid/content/Context;
    :try_end_4f
    .catchall {:try_start_23 .. :try_end_4f} :catchall_ec

    if-eqz v8, :cond_5f

    .line 1141
    :try_start_51
    iget-object v8, p0, mContext:Landroid/content/Context;

    const/4 v9, 0x0

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, p3, v9, v10}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, mCurrentUserContext:Landroid/content/Context;
    :try_end_5f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_51 .. :try_end_5f} :catch_c7
    .catchall {:try_start_51 .. :try_end_5f} :catchall_ec

    .line 1147
    :cond_5f
    :goto_5f
    :try_start_5f
    invoke-direct {p0, p1, p2}, addData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v8

    if-eqz v8, :cond_a8

    .line 1149
    invoke-direct {p0, p3}, getSEAMSCategory(Ljava/lang/String;)I

    move-result v2

    .line 1150
    .local v2, "cat":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1151
    .local v4, "ident":J
    invoke-direct {p0, v2}, isSEContainerClipboardEnabled(I)I

    move-result v7

    .line 1152
    .local v7, "status":I
    const-string v8, "ClipboardExService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setClipboardData,callingPackage = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "getSEAMSCategory result: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1154
    if-eq v7, v11, :cond_a7

    .line 1155
    invoke-direct {p0, p2, p3}, sendOriginalClipboardData(Landroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)V

    .line 1157
    :cond_a7
    const/4 v6, 0x1

    .line 1159
    .end local v2    # "cat":I
    .end local v4    # "ident":J
    .end local v7    # "status":I
    :cond_a8
    monitor-exit p0
    :try_end_a9
    .catchall {:try_start_5f .. :try_end_a9} :catchall_ec

    .line 1160
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v8, :cond_11

    .line 1161
    const-string v8, "ClipboardExService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "==================================================================="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1142
    :catch_c7
    move-exception v3

    .line 1143
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_c8
    const-string v8, "ClipboardExService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "callingPackage :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", NameNotFoundException :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5f

    .line 1159
    .end local v0    # "callingUid":I
    .end local v1    # "callingUser":I
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_ec
    move-exception v8

    monitor-exit p0
    :try_end_ee
    .catchall {:try_start_c8 .. :try_end_ee} :catchall_ec

    throw v8
.end method

.method public SetClipboardDataOriginalToEx(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 6
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v0, 0x0

    .line 1205
    invoke-virtual {p0}, isEnabled()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1206
    const-string v1, "ClipboardExService"

    const-string/jumbo v2, "not enabled! SetClipboardDataOriginalToEx()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :goto_f
    return v0

    :cond_10
    invoke-virtual {p0, p1, p2, v0}, setData(ILandroid/sec/clipboard/data/ClipboardData;Z)Z

    move-result v0

    goto :goto_f
.end method

.method public SetClipboardDataWithoutSendingOrginalClipboard(ILandroid/sec/clipboard/data/ClipboardData;Ljava/lang/String;)Z
    .registers 8
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1167
    invoke-virtual {p0}, isEnabled()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1168
    const-string v2, "ClipboardExService"

    const-string/jumbo v3, "not enabled! SetClipboardDataWithoutSendingOrginalClipboard()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1201
    :cond_10
    :goto_10
    return v0

    .line 1172
    :cond_11
    if-nez p2, :cond_15

    move v0, v1

    .line 1173
    goto :goto_10

    .line 1176
    :cond_15
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_20

    .line 1177
    const-string v2, "ClipboardExService"

    const-string v3, "======== SetClipboardDataWithoutSendingOrginalClipboard =========="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_20
    const/4 v0, 0x0

    .line 1180
    .local v0, "result":Z
    monitor-enter p0

    .line 1181
    :try_start_22
    sget-boolean v2, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v2, :cond_35

    .line 1182
    const-string v2, "ClipboardExService"

    const-string v3, "----------------------------------------------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    const-string v2, "ClipboardExService"

    const-string/jumbo v3, "in synchronized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :cond_35
    const/4 v2, 0x1

    invoke-virtual {p0}, getPersonaId()I

    move-result v3

    invoke-direct {p0, v2, v3}, isClipboardAllowed(ZI)I

    move-result v2

    if-nez v2, :cond_46

    .line 1187
    invoke-direct {p0}, clearDataList()V

    .line 1188
    monitor-exit p0

    move v0, v1

    goto :goto_10

    .line 1192
    :cond_46
    if-nez p2, :cond_4b

    .line 1193
    monitor-exit p0

    move v0, v1

    goto :goto_10

    .line 1196
    :cond_4b
    invoke-direct {p0, p1, p2}, addData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 1197
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_22 .. :try_end_50} :catchall_6d

    .line 1198
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v1, :cond_10

    .line 1199
    const-string v1, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==================================================================="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 1197
    :catchall_6d
    move-exception v1

    :try_start_6e
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method public SetSyncClipboardData(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2256
    const/4 v0, 0x0

    return v0
.end method

.method public ShowUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 6
    .param p1, "format"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 1714
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_d

    .line 1715
    const-string v0, "ClipboardExService"

    const-string/jumbo v1, "show ui clipboard dialog in service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_d
    invoke-virtual {p0}, isKnoxTwoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, isKnoxKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1732
    :cond_19
    :goto_19
    return-void

    .line 1725
    :cond_1a
    iput p1, p0, mEnableFormatId:I

    .line 1726
    iput-object p2, p0, mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 1728
    sget-boolean v0, SEC_FLOATING_FEATURE_VIEWSYSTEM_CLIPBOARD_UI_SERVICE:Z

    if-eqz v0, :cond_19

    .line 1729
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1730
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_19
.end method

.method public UpdateClipboardDB(I)V
    .registers 2
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2253
    return-void
.end method

.method public UpdateUIClipboardData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 5
    .param p1, "format"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 1753
    invoke-virtual {p0}, IsShowUIClipboardData()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1764
    :goto_7
    return-void

    .line 1758
    :cond_8
    iput p1, p0, mEnableFormatId:I

    .line 1759
    iput-object p2, p0, mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 1761
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1762
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_7
.end method

.method public callPasteMenuFromApp(I)V
    .registers 6
    .param p1, "enabled"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 2052
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_1d

    .line 2053
    const-string v0, "ClipboardExService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callPasteMenuFromApp() in service. enabled :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    :cond_1d
    if-nez p1, :cond_22

    .line 2056
    iput-boolean v3, p0, mIsCalledPasteApp:Z

    .line 2064
    :cond_21
    :goto_21
    return-void

    .line 2057
    :cond_22
    if-ne p1, v3, :cond_28

    .line 2058
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsCalledPasteApp:Z

    goto :goto_21

    .line 2060
    :cond_28
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_21

    .line 2061
    const-string v0, "ClipboardExService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrong param in setPastedFromApp() enabled :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method public deleteDir(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 651
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    .line 652
    return-void
.end method

.method public dismissUIDataDialog()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    .line 1771
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1772
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1777
    return-void
.end method

.method public getClipedStrings(II)Ljava/util/List;
    .registers 16
    .param p1, "metaType"    # I
    .param p2, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1954
    monitor-enter p0

    .line 1955
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1956
    .local v6, "metaDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1959
    .local v1, "clipText":Ljava/lang/String;
    invoke-virtual {p0}, isKnoxTwoEnabled()Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-direct {p0}, isServiceCallFromOther()Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 1960
    const-string v11, "ClipboardExService"

    const-string v12, "ClipboardExService getClipedStrings() abnormal called!!!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    monitor-exit p0

    .line 2018
    :goto_1b
    return-object v6

    .line 1965
    :cond_1c
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    iget-object v11, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v11}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v11

    if-ge v4, v11, :cond_57

    .line 1966
    iget-object v11, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v11, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 1967
    .local v2, "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_99

    .line 1968
    move-object v0, v2

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    move-object v9, v0

    .line 1969
    .local v9, "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v9}, Landroid/sec/clipboard/data/list/ClipboardDataText;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_8d

    .line 1970
    if-nez p1, :cond_5c

    .line 1971
    invoke-virtual {v9}, Landroid/sec/clipboard/data/list/ClipboardDataText;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1972
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1973
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ne v11, p2, :cond_8d

    .line 2018
    .end local v2    # "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    .end local v9    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_57
    :goto_57
    monitor-exit p0

    goto :goto_1b

    .line 2019
    .end local v1    # "clipText":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "metaDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_59
    move-exception v11

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_59

    throw v11

    .line 1977
    .restart local v1    # "clipText":Ljava/lang/String;
    .restart local v2    # "clipboardData":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v4    # "i":I
    .restart local v6    # "metaDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_5c
    :try_start_5c
    new-instance v8, Landroid/util/secutil/SmartParser;

    invoke-virtual {v9}, Landroid/sec/clipboard/data/list/ClipboardDataText;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, mContext:Landroid/content/Context;

    invoke-direct {v8, v11, v12}, Landroid/util/secutil/SmartParser;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 1978
    .local v8, "parser":Landroid/util/secutil/SmartParser;
    invoke-virtual {v8}, Landroid/util/secutil/SmartParser;->getTotalData()Landroid/util/secutil/SmartParsingData;

    move-result-object v10

    .line 1979
    .local v10, "totalData":Landroid/util/secutil/SmartParsingData;
    invoke-virtual {v10, p1}, Landroid/util/secutil/SmartParsingData;->getCount(I)I

    move-result v11

    if-lez v11, :cond_8d

    .line 1980
    invoke-virtual {v10, p1}, Landroid/util/secutil/SmartParsingData;->getInfo(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 1981
    .local v7, "parseResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "idx":I
    :goto_7a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_8d

    .line 1982
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1983
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ne v11, p2, :cond_96

    .line 2014
    .end local v5    # "idx":I
    .end local v7    # "parseResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "parser":Landroid/util/secutil/SmartParser;
    .end local v9    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v10    # "totalData":Landroid/util/secutil/SmartParsingData;
    :cond_8d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eq v11, p2, :cond_57

    .line 1965
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 1981
    .restart local v5    # "idx":I
    .restart local v7    # "parseResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "parser":Landroid/util/secutil/SmartParser;
    .restart local v9    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .restart local v10    # "totalData":Landroid/util/secutil/SmartParsingData;
    :cond_96
    add-int/lit8 v5, v5, 0x1

    goto :goto_7a

    .line 1990
    .end local v5    # "idx":I
    .end local v7    # "parseResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "parser":Landroid/util/secutil/SmartParser;
    .end local v9    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v10    # "totalData":Landroid/util/secutil/SmartParsingData;
    :cond_99
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->getFormat()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_8d

    .line 1991
    move-object v0, v2

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    move-object v3, v0

    .line 1992
    .local v3, "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getPlainText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_8d

    .line 1993
    if-nez p1, :cond_be

    .line 1994
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getPlainText()Ljava/lang/String;

    move-result-object v1

    .line 1995
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1996
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ne v11, p2, :cond_8d

    goto :goto_57

    .line 2000
    :cond_be
    new-instance v8, Landroid/util/secutil/SmartParser;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getPlainText()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, mContext:Landroid/content/Context;

    invoke-direct {v8, v11, v12}, Landroid/util/secutil/SmartParser;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 2001
    .restart local v8    # "parser":Landroid/util/secutil/SmartParser;
    invoke-virtual {v8}, Landroid/util/secutil/SmartParser;->getTotalData()Landroid/util/secutil/SmartParsingData;

    move-result-object v10

    .line 2002
    .restart local v10    # "totalData":Landroid/util/secutil/SmartParsingData;
    invoke-virtual {v10, p1}, Landroid/util/secutil/SmartParsingData;->getCount(I)I

    move-result v11

    if-lez v11, :cond_8d

    .line 2003
    invoke-virtual {v10, p1}, Landroid/util/secutil/SmartParsingData;->getInfo(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 2004
    .restart local v7    # "parseResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .restart local v5    # "idx":I
    :goto_d8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_8d

    .line 2005
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2006
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_e8
    .catchall {:try_start_5c .. :try_end_e8} :catchall_59

    move-result v11

    if-eq v11, p2, :cond_8d

    .line 2004
    add-int/lit8 v5, v5, 0x1

    goto :goto_d8
.end method

.method public getDataSize()I
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 999
    invoke-virtual {p0}, getPersonaId()I

    move-result v4

    invoke-direct {p0, v3, v4}, isClipboardAllowed(ZI)I

    move-result v4

    if-nez v4, :cond_f

    .line 1000
    invoke-direct {p0}, clearDataList()V

    .line 1023
    :goto_e
    return v3

    .line 1002
    :cond_f
    invoke-virtual {p0}, getPersonaId()I

    move-result v4

    invoke-direct {p0, v4}, isClipboardShareAllowed(I)I

    move-result v4

    if-nez v4, :cond_58

    .line 1003
    invoke-direct {p0}, loadSEContainer()V

    .line 1004
    const/4 v3, 0x0

    .line 1005
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    iget-object v4, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v4

    if-ge v1, v4, :cond_3e

    .line 1006
    iget-object v4, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardData;->getCallerUid()J

    move-result-wide v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_3b

    .line 1007
    add-int/lit8 v3, v3, 0x1

    .line 1005
    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1010
    :cond_3e
    const-string v4, "ClipboardExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDataSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1015
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_58
    iget-object v4, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    .line 1017
    .local v0, "dataSize":I
    invoke-virtual {p0}, isKnoxTwoEnabled()Z

    move-result v4

    if-eqz v4, :cond_91

    .line 1018
    iget-object v4, p0, mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->sharedSize()I

    move-result v2

    .line 1019
    .local v2, "sharedSize":I
    const-string v4, "ClipboardExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDataSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    add-int v3, v0, v2

    goto/16 :goto_e

    .end local v2    # "sharedSize":I
    :cond_91
    move v3, v0

    .line 1023
    goto/16 :goto_e
.end method

.method public getPersonaId()I
    .registers 3

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "userId":I
    sget-boolean v1, mHasKnox:Z

    if-eqz v1, :cond_17

    .line 178
    invoke-direct {p0}, getPersonaManager()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 179
    iget-object v1, p0, mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v1}, Landroid/os/PersonaManager;->getFocusedUser()I

    move-result v0

    .line 186
    :goto_11
    return v0

    .line 181
    :cond_12
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_11

    .line 184
    :cond_17
    invoke-direct {p0}, getUserId()I

    move-result v0

    goto :goto_11
.end method

.method public getScrapDataSize()I
    .registers 3

    .prologue
    .line 1028
    const-string v0, "ClipboardExService"

    const-string/jumbo v1, "getScrapDataSize!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 2068
    invoke-virtual {p0}, getPersonaId()I

    move-result v0

    invoke-direct {p0, v0}, isEnabled(I)Z

    move-result v0

    return v0
.end method

.method isKnoxTwoEnabled()Z
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 192
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 193
    .local v1, "versionInfo":Landroid/os/Bundle;
    const-string v5, "2.0"

    const-string/jumbo v6, "version"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 194
    invoke-direct {p0}, getPersonaManager()Z

    move-result v5

    if-eqz v5, :cond_75

    .line 195
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 196
    .local v2, "ident":J
    invoke-virtual {p0}, getPersonaId()I

    move-result v0

    .line 197
    .local v0, "currUser":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 199
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v5, :cond_42

    .line 200
    const-string v5, "ClipboardExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isKnoxTwoEnabled getPersonaId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_42
    iget-object v5, p0, mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v5, v0}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v5

    if-nez v5, :cond_56

    .line 204
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v5, :cond_55

    .line 205
    const-string v5, "ClipboardExService"

    const-string v6, "Current user is a USER, hence return false"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v0    # "currUser":I
    .end local v2    # "ident":J
    :cond_55
    :goto_55
    return v4

    .line 209
    .restart local v0    # "currUser":I
    .restart local v2    # "ident":J
    :cond_56
    invoke-static {v0}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 210
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v5, :cond_55

    .line 211
    const-string v5, "ClipboardExService"

    const-string v6, "Current user is BBC, hence return false"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    .line 216
    :cond_68
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_73

    .line 217
    const-string v4, "ClipboardExService"

    const-string v5, "Current user is a persona, hence return true"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_73
    const/4 v4, 0x1

    goto :goto_55

    .line 223
    .end local v0    # "currUser":I
    .end local v2    # "ident":J
    :cond_75
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v5, :cond_55

    .line 224
    const-string v5, "ClipboardExService"

    const-string v6, "\'ro.build.knox.container\' system property is not set to \'2.0\', hence return false"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55
.end method

.method public iscalledPasteMenuFromApp()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2044
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_1f

    .line 2045
    const-string v0, "ClipboardExService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "iscalledPasteMenuFromApp() in service : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mIsCalledPasteApp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :cond_1f
    iget-boolean v0, p0, mIsCalledPasteApp:Z

    return v0
.end method

.method public multiUserMode(ILjava/lang/String;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    .line 2024
    invoke-direct {p0, p1}, isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_20

    .line 2025
    const-string v1, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not enabled! multiUserMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    :goto_1f
    return-void

    .line 2028
    :cond_20
    monitor-enter p0

    .line 2030
    :try_start_21
    invoke-virtual {p0}, isKnoxTwoEnabled()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 2031
    invoke-direct {p0}, getPersonaManager()Z

    move-result v1

    if-eqz v1, :cond_5b

    iget-object v1, p0, mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 2032
    iget-object v1, p0, mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->getParentId(I)I

    move-result v0

    .line 2033
    .local v0, "parentId":I
    const-string v1, "ClipboardExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "multiUserMode parentId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    iget-object v1, p0, mSharedClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    iget-object v2, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1, v2, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->replaceWithTargetForUser(Landroid/sec/clipboard/data/ClipboardDataMgr;I)V

    .line 2038
    .end local v0    # "parentId":I
    :cond_5b
    iget-object v1, p0, mClipDataMgr:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v1, p1, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->multiUserMode(ILjava/lang/String;)V

    .line 2039
    monitor-exit p0

    goto :goto_1f

    :catchall_62
    move-exception v1

    monitor-exit p0
    :try_end_64
    .catchall {:try_start_21 .. :try_end_64} :catchall_62

    throw v1
.end method

.method public setData(ILandroid/sec/clipboard/data/ClipboardData;Z)Z
    .registers 11
    .param p1, "format"    # I
    .param p2, "data"    # Landroid/sec/clipboard/data/ClipboardData;
    .param p3, "isCallFromGED"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1217
    if-eqz p3, :cond_13

    invoke-direct {p0}, canReadAcrossProfiles()Z

    move-result v4

    if-nez v4, :cond_13

    .line 1218
    const-string v3, "ClipboardExService"

    const-string/jumbo v4, "disallow cross profile copy & paste!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :cond_12
    :goto_12
    return v0

    .line 1222
    :cond_13
    if-eqz p2, :cond_12

    .line 1225
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_3d

    .line 1226
    const-string v4, "ClipboardExService"

    const-string v5, "==================================================================="

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    const-string v4, "ClipboardExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setData : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :cond_3d
    invoke-virtual {p0}, getPersonaId()I

    move-result v4

    invoke-direct {p0, v3, v4}, isClipboardAllowed(ZI)I

    move-result v4

    if-nez v4, :cond_4b

    .line 1233
    invoke-direct {p0}, clearDataList()V

    goto :goto_12

    .line 1237
    :cond_4b
    const/4 v4, 0x5

    if-ne p1, v4, :cond_66

    move-object v2, p2

    .line 1238
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 1239
    .local v2, "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 1240
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_66

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->isImagefile()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 1241
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, copyUriFromClipboardSaveService(Ljava/lang/String;)V

    move v0, v3

    .line 1242
    goto :goto_12

    .line 1245
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :cond_66
    invoke-direct {p0, p1, p2}, addData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 1246
    .local v0, "ret":Z
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v3, :cond_12

    .line 1247
    const-string v3, "ClipboardExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=================================================================== "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public showUIDataDialog()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 1781
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-nez v0, :cond_12

    .line 1782
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v0, :cond_11

    .line 1783
    const-string v0, "ClipboardExService"

    const-string/jumbo v1, "showUIDataDialog : Context is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    :cond_11
    :goto_11
    return-void

    .line 1789
    :cond_12
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1790
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_11
.end method

.method public unRegistClipboardWorkingFormUiInterface()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2263
    return-void
.end method

.method public unRegistClipboardWorkingFormUiInterfaces(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)V
    .registers 7
    .param p1, "iRegInterface"    # Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1561
    monitor-enter p0

    .line 1562
    :try_start_1
    iget-object v2, p0, mWorkingUiInterfaceList:Ljava/util/ArrayList;

    if-eqz v2, :cond_45

    .line 1563
    iget-object v2, p0, mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;

    .line 1564
    .local v1, "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1565
    iget-object v2, p0, mWorkingUiInterfaceList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1566
    monitor-exit p0

    .line 1572
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "uiInterface":Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;
    :goto_2b
    return-void

    .line 1569
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2c
    const-string v2, "ClipboardExService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_45
    monitor-exit p0

    goto :goto_2b

    :catchall_47
    move-exception v2

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_47

    throw v2
.end method
