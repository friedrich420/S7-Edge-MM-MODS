.class Lcom/android/settings/tts/TtsEnginePreference$3;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tts/TtsEnginePreference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TtsEnginePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TtsEnginePreference;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference$3;->this$0:Lcom/android/settings/tts/TtsEnginePreference;

    # invokes: Lcom/android/settings/tts/TtsEnginePreference;->launchSettings()V
    invoke-static {v0}, Lcom/android/settings/tts/TtsEnginePreference;->access$100(Lcom/android/settings/tts/TtsEnginePreference;)V

    .line 157
    return-void
.end method
