.class Lcom/android/settings/FontPreviewTablet$8;
.super Ljava/lang/Object;
.source "FontPreviewTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FontPreviewTablet;->badFontDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FontPreviewTablet;

.field final synthetic val$deletePackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/FontPreviewTablet;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1289
    iput-object p1, p0, Lcom/android/settings/FontPreviewTablet$8;->this$0:Lcom/android/settings/FontPreviewTablet;

    iput-object p2, p0, Lcom/android/settings/FontPreviewTablet$8;->val$deletePackageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1293
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/FontPreviewTablet$8;->val$deletePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1294
    .local v1, "packageURI":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DELETE"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v4, 0x34000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 1298
    .local v2, "uninstallIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/FontPreviewTablet$8;->this$0:Lcom/android/settings/FontPreviewTablet;

    # getter for: Lcom/android/settings/FontPreviewTablet;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/FontPreviewTablet;->access$500(Lcom/android/settings/FontPreviewTablet;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1301
    iget-object v3, p0, Lcom/android/settings/FontPreviewTablet$8;->this$0:Lcom/android/settings/FontPreviewTablet;

    invoke-virtual {v3}, Lcom/android/settings/FontPreviewTablet;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1305
    .end local v1    # "packageURI":Landroid/net/Uri;
    .end local v2    # "uninstallIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1302
    :catch_0
    move-exception v0

    .line 1303
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
