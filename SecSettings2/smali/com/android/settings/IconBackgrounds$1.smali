.class Lcom/android/settings/IconBackgrounds$1;
.super Ljava/lang/Object;
.source "IconBackgrounds.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IconBackgrounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IconBackgrounds;


# direct methods
.method constructor <init>(Lcom/android/settings/IconBackgrounds;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/IconBackgrounds$1;->this$0:Lcom/android/settings/IconBackgrounds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    const-string v0, "IconBackgrounds"

    const-string v1, "mIconBackgroundsClickListener"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/android/settings/IconBackgrounds$1;->this$0:Lcom/android/settings/IconBackgrounds;

    # getter for: Lcom/android/settings/IconBackgrounds;->mIconBackgroundsRadio:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/settings/IconBackgrounds;->access$000(Lcom/android/settings/IconBackgrounds;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/IconBackgrounds$1;->this$0:Lcom/android/settings/IconBackgrounds;

    # getter for: Lcom/android/settings/IconBackgrounds;->mIconOnlyRadio:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/settings/IconBackgrounds;->access$100(Lcom/android/settings/IconBackgrounds;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 64
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/settings/IconBackgrounds$1;->this$0:Lcom/android/settings/IconBackgrounds;

    # getter for: Lcom/android/settings/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/IconBackgrounds;->access$200(Lcom/android/settings/IconBackgrounds;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02010b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IconBackgrounds$1;->this$0:Lcom/android/settings/IconBackgrounds;

    # getter for: Lcom/android/settings/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/IconBackgrounds;->access$200(Lcom/android/settings/IconBackgrounds;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02010a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
