.class Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$2;
.super Ljava/lang/Object;
.source "AccessibilityDialogPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$2;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$2;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    # getter for: Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mValues:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->access$000(Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 58
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$2;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    # getter for: Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mCallback:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;
    invoke-static {v1}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->access$100(Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;)Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$2;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    # getter for: Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mCallback:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;
    invoke-static {v1}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->access$100(Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;)Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$Callback;->onItemSelected(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    :cond_0
    return-void
.end method
