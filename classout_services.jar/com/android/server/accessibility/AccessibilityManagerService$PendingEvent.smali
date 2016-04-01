.class final Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingEvent"
.end annotation


# instance fields
.field event:Landroid/view/KeyEvent;

.field handled:Z

.field next:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

.field policyFlags:I

.field sequence:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 4811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/accessibility/AccessibilityManagerService$1;

    .prologue
    .line 4811
    invoke-direct {p0}, <init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 4820
    iget-object v0, p0, event:Landroid/view/KeyEvent;

    if-eqz v0, :cond_d

    .line 4821
    iget-object v0, p0, event:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V

    .line 4822
    iput-object v2, p0, event:Landroid/view/KeyEvent;

    .line 4824
    :cond_d
    iput-object v2, p0, next:Lcom/android/server/accessibility/AccessibilityManagerService$PendingEvent;

    .line 4825
    iput v1, p0, policyFlags:I

    .line 4826
    iput v1, p0, sequence:I

    .line 4827
    iput-boolean v1, p0, handled:Z

    .line 4828
    return-void
.end method
