.class Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;
.super Ljava/lang/Object;
.source "UsbModeChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->inflateOption(IZLandroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;I)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    iput p2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    # getter for: Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrent:I
    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->access$000(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)I

    move-result v0

    iget v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->val$mode:I

    if-eq v0, v1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    # getter for: Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->access$100(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Lcom/android/settings/deviceinfo/UsbBackend;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->val$mode:I

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/UsbBackend;->setMode(I)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    # getter for: Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->access$200(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 153
    return-void
.end method
