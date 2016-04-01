.class public Landroid/webkit/JsPromptResult;
.super Landroid/webkit/JsResult;
.source "JsPromptResult.java"


# instance fields
.field private mStringResult:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/webkit/JsResult$ResultReceiver;)V
    .registers 2
    .param p1, "receiver"    # Landroid/webkit/JsResult$ResultReceiver;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/webkit/JsResult;-><init>(Landroid/webkit/JsResult$ResultReceiver;)V

    .line 47
    return-void
.end method


# virtual methods
.method public confirm(Ljava/lang/String;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, mStringResult:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, confirm()V

    .line 39
    return-void
.end method

.method public getStringResult()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, mStringResult:Ljava/lang/String;

    return-object v0
.end method
