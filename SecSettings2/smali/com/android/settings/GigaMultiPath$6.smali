.class Lcom/android/settings/GigaMultiPath$6;
.super Ljava/lang/Object;
.source "GigaMultiPath.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GigaMultiPath;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GigaMultiPath;


# direct methods
.method constructor <init>(Lcom/android/settings/GigaMultiPath;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/settings/GigaMultiPath$6;->this$0:Lcom/android/settings/GigaMultiPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/settings/GigaMultiPath$6;->this$0:Lcom/android/settings/GigaMultiPath;

    # getter for: Lcom/android/settings/GigaMultiPath;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings/GigaMultiPath;->access$300(Lcom/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 295
    return-void
.end method
