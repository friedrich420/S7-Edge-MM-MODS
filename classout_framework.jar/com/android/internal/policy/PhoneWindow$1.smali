.class Lcom/android/internal/policy/PhoneWindow$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneWindow;)V
    .registers 2

    .prologue
    .line 337
    iput-object p1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 339
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/16 v1, 0xd

    if-gt v0, v1, :cond_19

    .line 340
    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # getter for: Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->access$000(Lcom/android/internal/policy/PhoneWindow;)I

    move-result v1

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v1, v2

    if-eqz v1, :cond_16

    .line 341
    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->doInvalidatePanelMenu(I)V

    .line 339
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 344
    :cond_19
    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # setter for: Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuPosted:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/PhoneWindow;->access$102(Lcom/android/internal/policy/PhoneWindow;Z)Z

    .line 345
    iget-object v1, p0, this$0:Lcom/android/internal/policy/PhoneWindow;

    # setter for: Lcom/android/internal/policy/PhoneWindow;->mInvalidatePanelMenuFeatures:I
    invoke-static {v1, v3}, Lcom/android/internal/policy/PhoneWindow;->access$002(Lcom/android/internal/policy/PhoneWindow;I)I

    .line 346
    return-void
.end method
