.class Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$10;
.super Ljava/lang/Object;
.source "RecentsMultiWindowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V
    .locals 0

    .prologue
    .line 898
    iput-object p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$10;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 900
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$10;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHelpDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$1500(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$10;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHelpDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$1500(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 901
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$10;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHelpDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$1500(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 902
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$10;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHelpDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$1500(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 903
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$10;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$500(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0118

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 904
    iget-object v1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$10;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mHelpDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$1500(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 906
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method
