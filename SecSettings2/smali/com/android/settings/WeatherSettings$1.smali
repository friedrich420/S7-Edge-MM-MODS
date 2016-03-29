.class Lcom/android/settings/WeatherSettings$1;
.super Ljava/lang/Object;
.source "WeatherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 178
    iput-object p1, p0, Lcom/android/settings/WeatherSettings$1;->this$0:Lcom/android/settings/WeatherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/WeatherSettings$1;->this$0:Lcom/android/settings/WeatherSettings;

    invoke-virtual {v0}, Lcom/android/settings/WeatherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/WeatherSettings;->launchWeatherWidgetSettingView(Landroid/content/Context;)Z

    .line 182
    iget-object v0, p0, Lcom/android/settings/WeatherSettings$1;->this$0:Lcom/android/settings/WeatherSettings;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/android/settings/WeatherSettings;->mBackFlag:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/android/settings/WeatherSettings;->access$002(Lcom/android/settings/WeatherSettings;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 183
    iget-object v0, p0, Lcom/android/settings/WeatherSettings$1;->this$0:Lcom/android/settings/WeatherSettings;

    invoke-virtual {v0}, Lcom/android/settings/WeatherSettings;->checkNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/settings/WeatherSettings$1;->this$0:Lcom/android/settings/WeatherSettings;

    invoke-virtual {v0}, Lcom/android/settings/WeatherSettings;->finish()V

    .line 186
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 187
    return-void
.end method
