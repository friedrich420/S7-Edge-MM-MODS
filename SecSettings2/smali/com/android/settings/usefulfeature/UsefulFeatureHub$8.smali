.class Lcom/android/settings/usefulfeature/UsefulFeatureHub$8;
.super Ljava/lang/Object;
.source "UsefulFeatureHub.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/usefulfeature/UsefulFeatureHub;->maketurnOffUniversalPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;


# direct methods
.method constructor <init>(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$8;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 530
    iget-object v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$8;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-virtual {v0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffUniversalSwitch(Landroid/content/Context;)Z

    .line 531
    iget-object v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$8;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    # invokes: Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->access$1200(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_palm_swipe"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 532
    iget-object v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$8;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    # invokes: Lcom/android/settings/usefulfeature/UsefulFeatureHub;->insertlog(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->access$1000(Lcom/android/settings/usefulfeature/UsefulFeatureHub;Z)V

    .line 533
    return-void
.end method
