.class Lcom/android/settings/WeatherSettings$2;
.super Ljava/lang/Object;
.source "WeatherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/WeatherSettings;->showAddCityPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WeatherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/WeatherSettings;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/settings/WeatherSettings$2;->this$0:Lcom/android/settings/WeatherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings/WeatherSettings$2;->this$0:Lcom/android/settings/WeatherSettings;

    # getter for: Lcom/android/settings/WeatherSettings;->mBackFlag:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/settings/WeatherSettings;->access$000(Lcom/android/settings/WeatherSettings;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings/WeatherSettings$2;->this$0:Lcom/android/settings/WeatherSettings;

    invoke-virtual {v0}, Lcom/android/settings/WeatherSettings;->finish()V

    .line 176
    :cond_0
    return-void
.end method
