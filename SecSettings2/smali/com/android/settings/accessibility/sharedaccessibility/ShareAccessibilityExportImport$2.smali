.class Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$2;
.super Ljava/lang/Object;
.source "ShareAccessibilityExportImport.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$2;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 197
    const-string v2, "ShareAccessibilityExportImport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RESTORE path :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$2;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    # getter for: Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->path:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->access$200(Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$2;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    # getter for: Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->path:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->access$200(Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->LoadValue(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Ljava/util/HashMap;

    move-result-object v2

    # setter for: Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->RevSettingValues:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->access$302(Ljava/util/HashMap;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    # getter for: Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->RevSettingValues:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->access$300()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    const-string v2, "ShareAccessibilityExportImport"

    const-string v3, "RevSettingValues is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_1
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 208
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$2;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    # getter for: Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->access$400(Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)Landroid/content/Context;

    move-result-object v2

    # getter for: Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->RevSettingValues:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->access$300()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->applySettings(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 210
    const-string v1, ""

    .line 211
    .local v1, "mSelectionFileName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$2;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    # getter for: Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->path:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->access$200(Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$2;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    # getter for: Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->path:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->access$200(Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$2;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    # getter for: Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->path:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->access$200(Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 212
    const-string v2, "ShareAccessibilityExportImport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSelectionFileName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v2, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$2;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    # invokes: Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->importNotificationSet(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->access$500(Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$2;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    invoke-virtual {v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->finish()V

    goto :goto_1
.end method
