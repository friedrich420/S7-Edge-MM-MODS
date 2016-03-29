.class Lcom/android/settings/applications/DefaultEmergencyPreference$1;
.super Landroid/os/AsyncTask;
.source "DefaultEmergencyPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/DefaultEmergencyPreference;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Set",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/DefaultEmergencyPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/DefaultEmergencyPreference;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings/applications/DefaultEmergencyPreference$1;->this$0:Lcom/android/settings/applications/DefaultEmergencyPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 73
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/DefaultEmergencyPreference$1;->doInBackground([Ljava/lang/Void;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground([Ljava/lang/Void;)Ljava/util/Set;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/applications/DefaultEmergencyPreference$1;->this$0:Lcom/android/settings/applications/DefaultEmergencyPreference;

    # invokes: Lcom/android/settings/applications/DefaultEmergencyPreference;->resolveAssistPackageAndQueryApps()Ljava/util/Set;
    invoke-static {v0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->access$000(Lcom/android/settings/applications/DefaultEmergencyPreference;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 73
    check-cast p1, Ljava/util/Set;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/DefaultEmergencyPreference$1;->onPostExecute(Ljava/util/Set;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/settings/applications/DefaultEmergencyPreference$1;->this$0:Lcom/android/settings/applications/DefaultEmergencyPreference;

    # getter for: Lcom/android/settings/applications/DefaultEmergencyPreference;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/applications/DefaultEmergencyPreference;->access$100(Lcom/android/settings/applications/DefaultEmergencyPreference;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "emergency_assistance_application"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "currentPkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/applications/DefaultEmergencyPreference$1;->this$0:Lcom/android/settings/applications/DefaultEmergencyPreference;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v1, v0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method
