.class public Landroid/service/voice/VoiceInteractionSession;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Landroid/view/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/VoiceInteractionSession$Insets;,
        Landroid/service/voice/VoiceInteractionSession$MyCallbacks;,
        Landroid/service/voice/VoiceInteractionSession$CommandRequest;,
        Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;,
        Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;,
        Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;,
        Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;,
        Landroid/service/voice/VoiceInteractionSession$Request;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final MSG_CANCEL:I = 0x7

.field static final MSG_CLOSE_SYSTEM_DIALOGS:I = 0x66

.field static final MSG_DESTROY:I = 0x67

.field static final MSG_HANDLE_ASSIST:I = 0x68

.field static final MSG_HANDLE_SCREENSHOT:I = 0x69

.field static final MSG_HIDE:I = 0x6b

.field static final MSG_ON_LOCKSCREEN_SHOWN:I = 0x6c

.field static final MSG_SHOW:I = 0x6a

.field static final MSG_START_ABORT_VOICE:I = 0x4

.field static final MSG_START_COMMAND:I = 0x5

.field static final MSG_START_COMPLETE_VOICE:I = 0x3

.field static final MSG_START_CONFIRMATION:I = 0x1

.field static final MSG_START_PICK_OPTION:I = 0x2

.field static final MSG_SUPPORTS_COMMANDS:I = 0x6

.field static final MSG_TASK_FINISHED:I = 0x65

.field static final MSG_TASK_STARTED:I = 0x64

.field public static final SHOW_SOURCE_APPLICATION:I = 0x8

.field public static final SHOW_SOURCE_ASSIST_GESTURE:I = 0x4

.field public static final SHOW_WITH_ASSIST:I = 0x1

.field public static final SHOW_WITH_SCREENSHOT:I = 0x2

.field static final TAG:Ljava/lang/String; = "VoiceInteractionSession"


# instance fields
.field final mActiveRequests:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/service/voice/VoiceInteractionSession$Request;",
            ">;"
        }
    .end annotation
.end field

.field final mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

.field mContentFrame:Landroid/widget/FrameLayout;

.field final mContext:Landroid/content/Context;

.field final mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field final mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

.field mInShowWindow:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mInitialized:Z

.field final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field final mInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field mRootView:Landroid/view/View;

.field final mSession:Landroid/service/voice/IVoiceInteractionSession;

.field mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

.field mTheme:I

.field mThemeAttrs:Landroid/content/res/TypedArray;

.field final mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

.field mToken:Landroid/os/IBinder;

.field final mWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/service/voice/VoiceInteractionSession;",
            ">;"
        }
    .end annotation
.end field

.field mWindow:Landroid/inputmethodservice/SoftInputWindow;

.field mWindowAdded:Z

.field mWindowVisible:Z

.field mWindowWasVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 925
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 926
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    .line 112
    const/4 v0, 0x0

    iput v0, p0, mTheme:I

    .line 125
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mActiveRequests:Landroid/util/ArrayMap;

    .line 127
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$Insets;

    invoke-direct {v0}, Landroid/service/voice/VoiceInteractionSession$Insets;-><init>()V

    iput-object v0, p0, mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    .line 129
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, mWeakRef:Ljava/lang/ref/WeakReference;

    .line 132
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$1;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSession$1;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    iput-object v0, p0, mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 208
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$2;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSession$2;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    iput-object v0, p0, mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 861
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    iput-object v0, p0, mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    .line 913
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$3;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSession$3;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    iput-object v0, p0, mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 929
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 930
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    .line 932
    return-void
.end method

.method private doOnCreate()V
    .registers 12

    .prologue
    const/4 v10, -0x1

    .line 1248
    iget v0, p0, mTheme:I

    if-eqz v0, :cond_4c

    iget v0, p0, mTheme:I

    :goto_7
    iput v0, p0, mTheme:I

    .line 1250
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, mInflater:Landroid/view/LayoutInflater;

    .line 1252
    new-instance v0, Landroid/inputmethodservice/SoftInputWindow;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "VoiceInteractionSession"

    iget v3, p0, mTheme:I

    iget-object v4, p0, mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    iget-object v6, p0, mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    const/16 v7, 0x7ef

    const/16 v8, 0x50

    const/4 v9, 0x1

    move-object v5, p0

    invoke-direct/range {v0 .. v9}, Landroid/inputmethodservice/SoftInputWindow;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/inputmethodservice/SoftInputWindow$Callback;Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;IIZ)V

    iput-object v0, p0, mWindow:Landroid/inputmethodservice/SoftInputWindow;

    .line 1255
    iget-object v0, p0, mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1010100

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1259
    invoke-virtual {p0}, initViews()V

    .line 1260
    iget-object v0, p0, mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v10, v10}, Landroid/view/Window;->setLayout(II)V

    .line 1261
    iget-object v0, p0, mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-object v1, p0, mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/SoftInputWindow;->setToken(Landroid/os/IBinder;)V

    .line 1262
    return-void

    .line 1248
    :cond_4c
    const v0, 0x1030482

    goto :goto_7
.end method


# virtual methods
.method addRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V
    .registers 4
    .param p1, "req"    # Landroid/service/voice/VoiceInteractionSession$Request;

    .prologue
    .line 939
    monitor-enter p0

    .line 940
    :try_start_1
    iget-object v0, p0, mActiveRequests:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    monitor-exit p0

    .line 942
    return-void

    .line 941
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public closeSystemDialogs()V
    .registers 3

    .prologue
    .line 1201
    iget-object v0, p0, mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1202
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t call before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1205
    :cond_c
    :try_start_c
    iget-object v0, p0, mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->closeSystemDialogs(Landroid/os/IBinder;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14

    .line 1208
    :goto_13
    return-void

    .line 1206
    :catch_14
    move-exception v0

    goto :goto_13
.end method

.method doCreate(Lcom/android/internal/app/IVoiceInteractionManagerService;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "service"    # Lcom/android/internal/app/IVoiceInteractionManagerService;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 957
    iput-object p1, p0, mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 958
    iput-object p2, p0, mToken:Landroid/os/IBinder;

    .line 959
    invoke-virtual {p0}, onCreate()V

    .line 960
    return-void
.end method

.method doDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1018
    invoke-virtual {p0}, onDestroy()V

    .line 1019
    iget-boolean v0, p0, mInitialized:Z

    if-eqz v0, :cond_20

    .line 1020
    iget-object v0, p0, mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1022
    iget-boolean v0, p0, mWindowAdded:Z

    if-eqz v0, :cond_1e

    .line 1023
    iget-object v0, p0, mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->dismiss()V

    .line 1024
    iput-boolean v2, p0, mWindowAdded:Z

    .line 1026
    :cond_1e
    iput-boolean v2, p0, mInitialized:Z

    .line 1028
    :cond_20
    return-void
.end method

.method doHide()V
    .registers 2

    .prologue
    .line 1010
    iget-boolean v0, p0, mWindowVisible:Z

    if-eqz v0, :cond_f

    .line 1011
    iget-object v0, p0, mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->hide()V

    .line 1012
    const/4 v0, 0x0

    iput-boolean v0, p0, mWindowVisible:Z

    .line 1013
    invoke-virtual {p0}, onHide()V

    .line 1015
    :cond_f
    return-void
.end method

.method doOnHandleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Ljava/lang/Throwable;Landroid/app/assist/AssistContent;)V
    .registers 5
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "structure"    # Landroid/app/assist/AssistStructure;
    .param p3, "failure"    # Ljava/lang/Throwable;
    .param p4, "content"    # Landroid/app/assist/AssistContent;

    .prologue
    .line 1308
    if-eqz p3, :cond_5

    .line 1309
    invoke-virtual {p0, p3}, onAssistStructureFailure(Ljava/lang/Throwable;)V

    .line 1311
    :cond_5
    invoke-virtual {p0, p1, p2, p4}, onHandleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;)V

    .line 1312
    return-void
.end method

.method doShow(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V
    .registers 9
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flags"    # I
    .param p3, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 966
    iget-boolean v1, p0, mInShowWindow:Z

    if-eqz v1, :cond_e

    .line 967
    const-string v1, "VoiceInteractionSession"

    const-string v2, "Re-entrance in to showWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :goto_d
    return-void

    .line 972
    :cond_e
    const/4 v1, 0x1

    :try_start_f
    iput-boolean v1, p0, mInShowWindow:Z

    .line 973
    iget-boolean v1, p0, mWindowVisible:Z

    if-nez v1, :cond_25

    .line 974
    iget-boolean v1, p0, mWindowAdded:Z

    if-nez v1, :cond_25

    .line 975
    const/4 v1, 0x1

    iput-boolean v1, p0, mWindowAdded:Z

    .line 976
    invoke-virtual {p0}, onCreateContentView()Landroid/view/View;

    move-result-object v0

    .line 977
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_25

    .line 978
    invoke-virtual {p0, v0}, setContentView(Landroid/view/View;)V

    .line 982
    .end local v0    # "v":Landroid/view/View;
    :cond_25
    invoke-virtual {p0, p1, p2}, onShow(Landroid/os/Bundle;I)V

    .line 983
    iget-boolean v1, p0, mWindowVisible:Z

    if-nez v1, :cond_34

    .line 984
    const/4 v1, 0x1

    iput-boolean v1, p0, mWindowVisible:Z

    .line 985
    iget-object v1, p0, mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v1}, Landroid/inputmethodservice/SoftInputWindow;->show()V

    .line 987
    :cond_34
    if-eqz p3, :cond_49

    .line 988
    iget-object v1, p0, mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 989
    iget-object v1, p0, mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Landroid/service/voice/VoiceInteractionSession$4;

    invoke-direct {v2, p0, p3}, Landroid/service/voice/VoiceInteractionSession$4;-><init>(Landroid/service/voice/VoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :try_end_49
    .catchall {:try_start_f .. :try_end_49} :catchall_4e

    .line 1004
    :cond_49
    iput-boolean v3, p0, mWindowWasVisible:Z

    .line 1005
    iput-boolean v4, p0, mInShowWindow:Z

    goto :goto_d

    .line 1004
    :catchall_4e
    move-exception v1

    iput-boolean v3, p0, mWindowWasVisible:Z

    .line 1005
    iput-boolean v4, p0, mInShowWindow:Z

    throw v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 1546
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mToken="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, mToken:Landroid/os/IBinder;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1547
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mTheme=#"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, mTheme:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1548
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mInitialized="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, mInitialized:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1549
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mWindowAdded="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, mWindowAdded:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1550
    const-string v3, " mWindowVisible="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, mWindowVisible:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1551
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mWindowWasVisible="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, mWindowWasVisible:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1552
    const-string v3, " mInShowWindow="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, mInShowWindow:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1553
    iget-object v3, p0, mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_ab

    .line 1554
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active requests:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1555
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1556
    .local v1, "innerPrefix":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_82
    iget-object v3, p0, mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_ab

    .line 1557
    iget-object v3, p0, mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/VoiceInteractionSession$Request;

    .line 1558
    .local v2, "req":Landroid/service/voice/VoiceInteractionSession$Request;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1559
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1560
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1561
    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/service/voice/VoiceInteractionSession$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1556
    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    .line 1565
    .end local v0    # "i":I
    .end local v1    # "innerPrefix":Ljava/lang/String;
    .end local v2    # "req":Landroid/service/voice/VoiceInteractionSession$Request;
    :cond_ab
    return-void
.end method

.method public finish()V
    .registers 3

    .prologue
    .line 1230
    iget-object v0, p0, mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1231
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t call before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1234
    :cond_c
    :try_start_c
    iget-object v0, p0, mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->finish(Landroid/os/IBinder;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14

    .line 1237
    :goto_13
    return-void

    .line 1235
    :catch_14
    move-exception v0

    goto :goto_13
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 935
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDisabledShowContext()I
    .registers 3

    .prologue
    .line 1062
    :try_start_0
    iget-object v1, p0, mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getDisabledShowContext()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1064
    :goto_6
    return v1

    .line 1063
    :catch_7
    move-exception v0

    .line 1064
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .prologue
    .line 1214
    iget-object v0, p0, mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getUserDisabledShowContext()I
    .registers 3

    .prologue
    .line 1079
    :try_start_0
    iget-object v1, p0, mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getUserDisabledShowContext()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1081
    :goto_6
    return v1

    .line 1080
    :catch_7
    move-exception v0

    .line 1081
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWindow()Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 1221
    iget-object v0, p0, mWindow:Landroid/inputmethodservice/SoftInputWindow;

    return-object v0
.end method

.method public hide()V
    .registers 3

    .prologue
    .line 1113
    iget-object v0, p0, mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t call before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1117
    :cond_c
    :try_start_c
    iget-object v0, p0, mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->hideSessionFromSession(Landroid/os/IBinder;)Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14

    .line 1120
    :goto_13
    return-void

    .line 1118
    :catch_14
    move-exception v0

    goto :goto_13
.end method

.method initViews()V
    .registers 4

    .prologue
    .line 1031
    const/4 v0, 0x1

    iput-boolean v0, p0, mInitialized:Z

    .line 1033
    iget-object v0, p0, mContext:Landroid/content/Context;

    sget-object v1, Landroid/R$styleable;->VoiceInteractionSession:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, mThemeAttrs:Landroid/content/res/TypedArray;

    .line 1034
    iget-object v0, p0, mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090161

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, mRootView:Landroid/view/View;

    .line 1036
    iget-object v0, p0, mRootView:Landroid/view/View;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1039
    iget-object v0, p0, mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-object v1, p0, mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/SoftInputWindow;->setContentView(Landroid/view/View;)V

    .line 1040
    iget-object v0, p0, mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1042
    iget-object v0, p0, mRootView:Landroid/view/View;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, mContentFrame:Landroid/widget/FrameLayout;

    .line 1043
    return-void
.end method

.method isRequestActive(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "reqInterface"    # Landroid/os/IBinder;

    .prologue
    .line 945
    monitor-enter p0

    .line 946
    :try_start_1
    iget-object v0, p0, mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 947
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public onAssistStructureFailure(Ljava/lang/Throwable;)V
    .registers 2
    .param p1, "failure"    # Ljava/lang/Throwable;

    .prologue
    .line 1325
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 1381
    invoke-virtual {p0}, hide()V

    .line 1382
    return-void
.end method

.method public onCancelRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V
    .registers 2
    .param p1, "request"    # Landroid/service/voice/VoiceInteractionSession$Request;

    .prologue
    .line 1532
    return-void
.end method

.method public onCloseSystemDialogs()V
    .registers 1

    .prologue
    .line 1390
    invoke-virtual {p0}, hide()V

    .line 1391
    return-void
.end method

.method public onComputeInsets(Landroid/service/voice/VoiceInteractionSession$Insets;)V
    .registers 6
    .param p1, "outInsets"    # Landroid/service/voice/VoiceInteractionSession$Insets;

    .prologue
    const/4 v3, 0x0

    .line 1422
    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 1423
    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 1424
    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 1425
    invoke-virtual {p0}, getWindow()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1426
    .local v0, "decor":Landroid/view/View;
    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1427
    iput v3, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->touchableInsets:I

    .line 1428
    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    .line 1429
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1402
    return-void
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 1244
    invoke-direct {p0}, doOnCreate()V

    .line 1245
    return-void
.end method

.method public onCreateContentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1295
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 1289
    return-void
.end method

.method public onGetSupportedCommands([Ljava/lang/String;)[Z
    .registers 3
    .param p1, "commands"    # [Ljava/lang/String;

    .prologue
    .line 1467
    array-length v0, p1

    new-array v0, v0, [Z

    return-object v0
.end method

.method public onHandleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;)V
    .registers 4
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "structure"    # Landroid/app/assist/AssistStructure;
    .param p3, "content"    # Landroid/app/assist/AssistContent;

    .prologue
    .line 1347
    return-void
.end method

.method public onHandleScreenshot(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1356
    return-void
.end method

.method public onHide()V
    .registers 1

    .prologue
    .line 1283
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1359
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1363
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1371
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1367
    const/4 v0, 0x0

    return v0
.end method

.method public onLockscreenShown()V
    .registers 1

    .prologue
    .line 1397
    invoke-virtual {p0}, hide()V

    .line 1398
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    .prologue
    .line 1406
    return-void
.end method

.method public onRequestAbortVoice(Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;

    .prologue
    .line 1511
    return-void
.end method

.method public onRequestCommand(Landroid/service/voice/VoiceInteractionSession$CommandRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/service/voice/VoiceInteractionSession$CommandRequest;

    .prologue
    .line 1521
    return-void
.end method

.method public onRequestCompleteVoice(Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;

    .prologue
    .line 1499
    return-void
.end method

.method public onRequestConfirmation(Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;

    .prologue
    .line 1478
    return-void
.end method

.method public onRequestPickOption(Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;)V
    .registers 2
    .param p1, "request"    # Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;

    .prologue
    .line 1487
    return-void
.end method

.method public onShow(Landroid/os/Bundle;I)V
    .registers 3
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "showFlags"    # I

    .prologue
    .line 1277
    return-void
.end method

.method public onTaskFinished(Landroid/content/Intent;I)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "taskId"    # I

    .prologue
    .line 1454
    invoke-virtual {p0}, hide()V

    .line 1455
    return-void
.end method

.method public onTaskStarted(Landroid/content/Intent;I)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "taskId"    # I

    .prologue
    .line 1440
    return-void
.end method

.method public onTrimMemory(I)V
    .registers 2
    .param p1, "level"    # I

    .prologue
    .line 1410
    return-void
.end method

.method removeRequest(Landroid/os/IBinder;)Landroid/service/voice/VoiceInteractionSession$Request;
    .registers 3
    .param p1, "reqInterface"    # Landroid/os/IBinder;

    .prologue
    .line 951
    monitor-enter p0

    .line 952
    :try_start_1
    iget-object v0, p0, mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionSession$Request;

    monitor-exit p0

    return-object v0

    .line 953
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    .line 1299
    iget-object v0, p0, mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1300
    iget-object v0, p0, mContentFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1303
    iget-object v0, p0, mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    .line 1304
    return-void
.end method

.method public setDisabledShowContext(I)V
    .registers 3
    .param p1, "flags"    # I

    .prologue
    .line 1051
    :try_start_0
    iget-object v0, p0, mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setDisabledShowContext(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1054
    :goto_5
    return-void

    .line 1052
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setKeepAwake(Z)V
    .registers 4
    .param p1, "keepAwake"    # Z

    .prologue
    .line 1186
    iget-object v0, p0, mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1187
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t call before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1190
    :cond_c
    :try_start_c
    iget-object v0, p0, mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setKeepAwake(Landroid/os/IBinder;Z)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14

    .line 1193
    :goto_13
    return-void

    .line 1191
    :catch_14
    move-exception v0

    goto :goto_13
.end method

.method public setTheme(I)V
    .registers 4
    .param p1, "theme"    # I

    .prologue
    .line 1129
    iget-object v0, p0, mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_c

    .line 1130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1132
    :cond_c
    iput p1, p0, mTheme:I

    .line 1133
    return-void
.end method

.method public show(Landroid/os/Bundle;I)V
    .registers 5
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flags"    # I

    .prologue
    .line 1099
    iget-object v0, p0, mToken:Landroid/os/IBinder;

    if-nez v0, :cond_c

    .line 1100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t call before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1103
    :cond_c
    :try_start_c
    iget-object v0, p0, mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v1, p0, mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->showSessionFromSession(Landroid/os/IBinder;Landroid/os/Bundle;I)Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14

    .line 1106
    :goto_13
    return-void

    .line 1104
    :catch_14
    move-exception v0

    goto :goto_13
.end method

.method public startVoiceActivity(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1159
    iget-object v1, p0, mToken:Landroid/os/IBinder;

    if-nez v1, :cond_c

    .line 1160
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can\'t call before onCreate()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1163
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 1164
    invoke-virtual {p1}, Landroid/content/Intent;->prepareToLeaveProcess()V

    .line 1165
    iget-object v1, p0, mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v2, p0, mToken:Landroid/os/IBinder;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/android/internal/app/IVoiceInteractionManagerService;->startVoiceActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I

    move-result v0

    .line 1167
    .local v0, "res":I
    invoke-static {v0, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_27} :catch_28

    .line 1170
    .end local v0    # "res":I
    :goto_27
    return-void

    .line 1168
    :catch_28
    move-exception v1

    goto :goto_27
.end method
