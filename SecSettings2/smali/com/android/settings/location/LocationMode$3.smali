.class Lcom/android/settings/location/LocationMode$3;
.super Ljava/lang/Object;
.source "LocationMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationMode;->onRadioButtonClicked(Lcom/android/settings/location/RadioButtonPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationMode;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationMode;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/settings/location/LocationMode$3;->this$0:Lcom/android/settings/location/LocationMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings/location/LocationMode$3;->this$0:Lcom/android/settings/location/LocationMode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/location/LocationMode;->setLocationMode(I)V

    .line 206
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 207
    return-void
.end method
