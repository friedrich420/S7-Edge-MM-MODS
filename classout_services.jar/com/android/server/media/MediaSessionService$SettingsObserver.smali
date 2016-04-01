.class final Lcom/android/server/media/MediaSessionService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mSecureSettingsUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method private constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .registers 3

    .prologue
    .line 654
    iput-object p1, p0, this$0:Lcom/android/server/media/MediaSessionService;

    .line 655
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 651
    const-string/jumbo v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, mSecureSettingsUri:Landroid/net/Uri;

    .line 656
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/MediaSessionService;Lcom/android/server/media/MediaSessionService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/media/MediaSessionService;
    .param p2, "x1"    # Lcom/android/server/media/MediaSessionService$1;

    .prologue
    .line 650
    invoke-direct {p0, p1}, <init>(Lcom/android/server/media/MediaSessionService;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/media/MediaSessionService$SettingsObserver;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SettingsObserver;

    .prologue
    .line 650
    invoke-direct {p0}, observe()V

    return-void
.end method

.method private observe()V
    .registers 5

    .prologue
    .line 659
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # getter for: Lcom/android/server/media/MediaSessionService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1000(Lcom/android/server/media/MediaSessionService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, mSecureSettingsUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 661
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 665
    iget-object v0, p0, this$0:Lcom/android/server/media/MediaSessionService;

    # invokes: Lcom/android/server/media/MediaSessionService;->updateActiveSessionListeners()V
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1300(Lcom/android/server/media/MediaSessionService;)V

    .line 666
    return-void
.end method
