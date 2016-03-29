.class public Lcom/android/settings/accessibility/MagnifierService$DetectBinder;
.super Landroid/os/Binder;
.source "MagnifierService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/MagnifierService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DetectBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/MagnifierService;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/MagnifierService;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings/accessibility/MagnifierService$DetectBinder;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/android/settings/accessibility/MagnifierService;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnifierService$DetectBinder;->this$0:Lcom/android/settings/accessibility/MagnifierService;

    return-object v0
.end method
