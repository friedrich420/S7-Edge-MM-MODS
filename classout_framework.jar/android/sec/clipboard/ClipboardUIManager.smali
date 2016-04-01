.class public Landroid/sec/clipboard/ClipboardUIManager;
.super Ljava/lang/Object;
.source "ClipboardUIManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardUIManager"

.field private static mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

.field private static sInstance:Landroid/sec/clipboard/ClipboardUIManager;


# instance fields
.field mAdapter:Landroid/widget/BaseAdapter;

.field private mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRecursiveCall:Ljava/lang/Runnable;

.field private mViewID:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, sInstance:Landroid/sec/clipboard/ClipboardUIManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, mViewID:I

    .line 41
    iput-object v1, p0, mAdapter:Landroid/widget/BaseAdapter;

    .line 42
    iput-object v1, p0, mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 44
    new-instance v0, Landroid/sec/clipboard/ClipboardUIManager$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/ClipboardUIManager$1;-><init>(Landroid/sec/clipboard/ClipboardUIManager;)V

    iput-object v0, p0, mRecursiveCall:Ljava/lang/Runnable;

    .line 65
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, mViewID:I

    .line 41
    iput-object v1, p0, mAdapter:Landroid/widget/BaseAdapter;

    .line 42
    iput-object v1, p0, mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 44
    new-instance v0, Landroid/sec/clipboard/ClipboardUIManager$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/ClipboardUIManager$1;-><init>(Landroid/sec/clipboard/ClipboardUIManager;)V

    iput-object v0, p0, mRecursiveCall:Ljava/lang/Runnable;

    .line 61
    invoke-direct {p0}, initVariable()V

    .line 62
    return-void
.end method

.method static synthetic access$000(Landroid/sec/clipboard/ClipboardUIManager;)Landroid/sec/clipboard/ClipboardExManager;
    .registers 2
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardUIManager;

    .prologue
    .line 33
    iget-object v0, p0, mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    return-object v0
.end method

.method static synthetic access$002(Landroid/sec/clipboard/ClipboardUIManager;Landroid/sec/clipboard/ClipboardExManager;)Landroid/sec/clipboard/ClipboardExManager;
    .registers 2
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardUIManager;
    .param p1, "x1"    # Landroid/sec/clipboard/ClipboardExManager;

    .prologue
    .line 33
    iput-object p1, p0, mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    return-object p1
.end method

.method static synthetic access$100(Landroid/sec/clipboard/ClipboardUIManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/sec/clipboard/ClipboardUIManager;

    .prologue
    .line 33
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method private closeClopboardUI(Z)Z
    .registers 6
    .param p1, "immediate"    # Z

    .prologue
    const/4 v3, 0x0

    .line 133
    invoke-direct {p0}, setupInRuntime()Z

    move-result v1

    if-nez v1, :cond_8

    .line 145
    :cond_7
    :goto_7
    return v3

    .line 137
    :cond_8
    :try_start_8
    sget-object v1, mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    if-eqz v1, :cond_7

    .line 138
    sget-object v1, mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    iget v2, p0, mViewID:I

    invoke-interface {v1, v2, p1}, Landroid/sec/clipboard/IClipboardUIManager;->dismiss(IZ)V

    .line 139
    const/4 v1, 0x0

    sput-object v1, mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_17

    goto :goto_7

    .line 141
    :catch_17
    move-exception v0

    .line 142
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;
    .registers 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 194
    sget-object v0, sInstance:Landroid/sec/clipboard/ClipboardUIManager;

    if-nez v0, :cond_b

    .line 195
    new-instance v0, Landroid/sec/clipboard/ClipboardUIManager;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    sput-object v0, sInstance:Landroid/sec/clipboard/ClipboardUIManager;

    .line 197
    :cond_b
    sget-object v0, sInstance:Landroid/sec/clipboard/ClipboardUIManager;

    return-object v0
.end method

.method private initVariable()V
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    .line 70
    return-void
.end method

.method private setupInRuntime()Z
    .registers 5

    .prologue
    .line 73
    const/4 v1, 0x1

    .line 75
    .local v1, "result":Z
    const-string v2, "clipboarduiservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 76
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardUIManager;

    move-result-object v2

    sput-object v2, mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    .line 78
    sget-object v2, mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    if-nez v2, :cond_19

    .line 79
    const-string v2, "ClipboardUIManager"

    const-string v3, "Failed to get ClipboardService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v1, 0x0

    .line 82
    :cond_19
    return v1
.end method

.method private showClipBoard(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z
    .registers 9
    .param p1, "type"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    .line 109
    const-string v2, "ClipboardUIManager"

    const-string v3, "ClipboardUIManager showClipBoard()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/4 v1, 0x0

    .line 113
    .local v1, "result":Z
    invoke-direct {p0}, setupInRuntime()Z

    move-result v2

    if-nez v2, :cond_23

    .line 114
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mRecursiveCall:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 115
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mRecursiveCall:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    :cond_21
    const/4 v2, 0x0

    .line 129
    :goto_22
    return v2

    .line 120
    :cond_23
    invoke-virtual {p0, p1, p2}, setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 123
    :try_start_26
    sget-object v2, mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    iget v3, p0, mViewID:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/sec/clipboard/IClipboardUIManager;->show(ILandroid/os/IBinder;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2e} :catch_31

    .line 124
    const/4 v1, 0x1

    :goto_2f
    move v2, v1

    .line 129
    goto :goto_22

    .line 125
    :catch_31
    move-exception v0

    .line 126
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 127
    const/4 v1, 0x0

    goto :goto_2f
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .prologue
    .line 154
    const-string v0, "ClipboardUIManager"

    const-string v1, "dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, v0}, closeClopboardUI(Z)Z

    .line 156
    return-void
.end method

.method public finish()V
    .registers 3

    .prologue
    .line 89
    const-string v0, "ClipboardUIManager"

    const-string v1, "Finish ClipboardService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, finish(Z)V

    .line 91
    return-void
.end method

.method public finish(Z)V
    .registers 6
    .param p1, "immediate"    # Z

    .prologue
    const/4 v3, 0x0

    .line 98
    const-string v0, "ClipboardUIManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_22

    .line 101
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 104
    :cond_22
    invoke-direct {p0, p1}, closeClopboardUI(Z)Z

    .line 105
    sput-object v3, mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    .line 106
    return-void
.end method

.method public hideFloatingIconForScrap()V
    .registers 1

    .prologue
    .line 204
    return-void
.end method

.method public isShowing()Z
    .registers 5

    .prologue
    .line 159
    const-string v2, "ClipboardUIManager"

    const-string v3, "ClipboardUIManager isShowingClipBoard()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v1, 0x0

    .line 163
    .local v1, "result":Z
    invoke-direct {p0}, setupInRuntime()Z

    move-result v2

    if-nez v2, :cond_10

    .line 164
    const/4 v2, 0x0

    .line 174
    :goto_f
    return v2

    .line 168
    :cond_10
    :try_start_10
    sget-object v2, mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardUIManager;->isShowing()Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_18

    move-result v1

    :goto_16
    move v2, v1

    .line 174
    goto :goto_f

    .line 169
    :catch_18
    move-exception v0

    .line 171
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 172
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public sendCropRectForAnimation(Landroid/graphics/Rect;Z)V
    .registers 3
    .param p1, "cropRect"    # Landroid/graphics/Rect;
    .param p2, "showAni"    # Z

    .prologue
    .line 209
    return-void
.end method

.method public setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    .line 178
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_26

    .line 179
    const-string v1, "ClipboardUIManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClipboardUIManager > setPasteTargetViewInfo - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_26
    :try_start_26
    sget-object v1, mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    if-eqz v1, :cond_30

    .line 183
    sget-object v1, mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v1, p1, p2}, Landroid/sec/clipboard/IClipboardUIManager;->setPasteTargetViewType(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 191
    :goto_2f
    return-void

    .line 185
    :cond_30
    const-string v1, "ClipboardUIManager"

    const-string v2, "mCBUIManager is null!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_37} :catch_38

    goto :goto_2f

    .line 187
    :catch_38
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2f
.end method

.method public show(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    .line 149
    const-string v0, "ClipboardUIManager"

    const-string/jumbo v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0, p1, p2}, showClipBoard(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z

    .line 151
    return-void
.end method
