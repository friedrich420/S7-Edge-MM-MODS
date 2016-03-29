.class final Lcom/android/setupwizardlib/util/SystemBarHelper$1;
.super Ljava/lang/Object;
.source "SystemBarHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setupwizardlib/util/SystemBarHelper;->addImmersiveFlagsToDecorView(Landroid/view/Window;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$vis:I

.field final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;Landroid/os/Handler;I)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$1;->val$window:Landroid/view/Window;

    iput-object p2, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$1;->val$handler:Landroid/os/Handler;

    iput p3, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$1;->val$vis:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$1;->val$window:Landroid/view/Window;

    iget-object v1, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$1;->val$handler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$1;->val$vis:I

    # invokes: Lcom/android/setupwizardlib/util/SystemBarHelper;->addImmersiveFlagsToDecorView(Landroid/view/Window;Landroid/os/Handler;I)V
    invoke-static {v0, v1, v2}, Lcom/android/setupwizardlib/util/SystemBarHelper;->access$000(Landroid/view/Window;Landroid/os/Handler;I)V

    .line 181
    return-void
.end method
