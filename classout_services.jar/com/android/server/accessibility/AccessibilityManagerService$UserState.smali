.class Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserState"
.end annotation


# instance fields
.field public mAccessibilityFocusOnlyInActiveWindow:Z

.field public final mBindingServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$Service;",
            ">;"
        }
    .end annotation
.end field

.field public final mClients:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;"
        }
    .end annotation
.end field

.field public final mComponentNameToServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/accessibility/AccessibilityManagerService$Service;",
            ">;"
        }
    .end annotation
.end field

.field public final mEnabledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public mHandledFeedbackTypes:I

.field public mHasDisplayColorAdjustment:Z

.field public final mInstalledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mInteractionConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityConnectionWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public mIsAccessibilityEnabled:Z

.field public mIsAccessibilitySTalkBackEnabled:Z

.field public mIsDisplayMagnificationEnabled:Z

.field public mIsEnhancedWebAccessibilityEnabled:Z

.field public mIsFilterKeyEventsEnabled:Z

.field public mIsHWkeysDoubleTapEnabled:Z

.field public mIsOverlayMagnificationEnabled:Z

.field public mIsTextHighContrastEnabled:Z

.field public mIsTouchExplorationEnabled:Z

.field public mIsUniversalSwitchEnabled:Z

.field public mLastSentClientState:I

.field public final mTouchExplorationGrantedServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiAutomationSerivceOnwerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

.field private mUiAutomationServiceClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private mUiAutomationServiceOwner:Landroid/os/IBinder;

.field public final mUserId:I

.field public final mWindowTokens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .registers 4
    .param p2, "userId"    # I

    .prologue
    .line 5544
    iput-object p1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5472
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, mClients:Landroid/os/RemoteCallbackList;

    .line 5475
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mInteractionConnections:Landroid/util/SparseArray;

    .line 5478
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mWindowTokens:Landroid/util/SparseArray;

    .line 5482
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5485
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mComponentNameToServiceMap:Ljava/util/Map;

    .line 5488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mInstalledServices:Ljava/util/List;

    .line 5491
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mBindingServices:Ljava/util/Set;

    .line 5493
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mEnabledServices:Ljava/util/Set;

    .line 5495
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mTouchExplorationGrantedServices:Ljava/util/Set;

    .line 5498
    const/4 v0, 0x0

    iput v0, p0, mHandledFeedbackTypes:I

    .line 5500
    const/4 v0, -0x1

    iput v0, p0, mLastSentClientState:I

    .line 5527
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState$1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    iput-object v0, p0, mUiAutomationSerivceOnwerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 5545
    iput p2, p0, mUserId:I

    .line 5546
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 5466
    iget-object v0, p0, mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .param p1, "x1"    # Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .prologue
    .line 5466
    iput-object p1, p0, mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Landroid/os/IBinder$DeathRecipient;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 5466
    iget-object v0, p0, mUiAutomationSerivceOnwerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 5466
    iget-object v0, p0, mUiAutomationServiceOwner:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 5466
    iput-object p1, p0, mUiAutomationServiceOwner:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Landroid/accessibilityservice/IAccessibilityServiceClient;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .prologue
    .line 5466
    iget-object v0, p0, mUiAutomationServiceClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Landroid/accessibilityservice/IAccessibilityServiceClient;)Landroid/accessibilityservice/IAccessibilityServiceClient;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .param p1, "x1"    # Landroid/accessibilityservice/IAccessibilityServiceClient;

    .prologue
    .line 5466
    iput-object p1, p0, mUiAutomationServiceClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    return-object p1
.end method


# virtual methods
.method public destroyUiAutomationService()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 5597
    iput-object v0, p0, mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 5598
    iput-object v0, p0, mUiAutomationServiceClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 5599
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5600
    :try_start_c
    iget-object v0, p0, mUiAutomationServiceOwner:Landroid/os/IBinder;

    if-eqz v0, :cond_1b

    .line 5601
    iget-object v0, p0, mUiAutomationServiceOwner:Landroid/os/IBinder;

    iget-object v2, p0, mUiAutomationSerivceOnwerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 5603
    const/4 v0, 0x0

    iput-object v0, p0, mUiAutomationServiceOwner:Landroid/os/IBinder;

    .line 5605
    :cond_1b
    monitor-exit v1

    .line 5606
    return-void

    .line 5605
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public getClientState()I
    .registers 3

    .prologue
    .line 5549
    const/4 v0, 0x0

    .line 5550
    .local v0, "clientState":I
    iget-boolean v1, p0, mIsAccessibilityEnabled:Z

    if-eqz v1, :cond_7

    .line 5551
    or-int/lit8 v0, v0, 0x1

    .line 5554
    :cond_7
    iget-boolean v1, p0, mIsAccessibilityEnabled:Z

    if-eqz v1, :cond_11

    iget-boolean v1, p0, mIsTouchExplorationEnabled:Z

    if-eqz v1, :cond_11

    .line 5555
    or-int/lit8 v0, v0, 0x2

    .line 5557
    :cond_11
    iget-boolean v1, p0, mIsTextHighContrastEnabled:Z

    if-eqz v1, :cond_17

    .line 5558
    or-int/lit8 v0, v0, 0x4

    .line 5560
    :cond_17
    return v0
.end method

.method public onSwitchToAnotherUser()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 5565
    iget-object v0, p0, mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    if-eqz v0, :cond_a

    .line 5566
    iget-object v0, p0, mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->binderDied()V

    .line 5570
    :cond_a
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$5900(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 5573
    iget-object v0, p0, mBoundServices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 5574
    iget-object v0, p0, mBindingServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 5577
    iput v1, p0, mHandledFeedbackTypes:I

    .line 5578
    const/4 v0, -0x1

    iput v0, p0, mLastSentClientState:I

    .line 5581
    iget-object v0, p0, mEnabledServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 5582
    iget-object v0, p0, mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 5583
    iput-boolean v1, p0, mIsAccessibilityEnabled:Z

    .line 5584
    iput-boolean v1, p0, mIsTouchExplorationEnabled:Z

    .line 5585
    iput-boolean v1, p0, mIsEnhancedWebAccessibilityEnabled:Z

    .line 5586
    iput-boolean v1, p0, mIsDisplayMagnificationEnabled:Z

    .line 5588
    iput-boolean v1, p0, mIsOverlayMagnificationEnabled:Z

    .line 5590
    iput-boolean v1, p0, mIsAccessibilitySTalkBackEnabled:Z

    .line 5592
    iput-boolean v1, p0, mIsUniversalSwitchEnabled:Z

    .line 5594
    return-void
.end method
