.class Lcom/android/settings/FontPreviewTablet$LoadListTask$1;
.super Ljava/lang/Object;
.source "FontPreviewTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FontPreviewTablet$LoadListTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/FontPreviewTablet$LoadListTask;


# direct methods
.method constructor <init>(Lcom/android/settings/FontPreviewTablet$LoadListTask;)V
    .locals 0

    .prologue
    .line 1349
    iput-object p1, p0, Lcom/android/settings/FontPreviewTablet$LoadListTask$1;->this$1:Lcom/android/settings/FontPreviewTablet$LoadListTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/android/settings/FontPreviewTablet$LoadListTask$1;->this$1:Lcom/android/settings/FontPreviewTablet$LoadListTask;

    iget-object v0, v0, Lcom/android/settings/FontPreviewTablet$LoadListTask;->this$0:Lcom/android/settings/FontPreviewTablet;

    invoke-virtual {v0}, Lcom/android/settings/FontPreviewTablet;->finish()V

    .line 1354
    return-void
.end method
