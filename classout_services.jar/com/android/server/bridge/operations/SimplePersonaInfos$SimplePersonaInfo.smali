.class public Lcom/android/server/bridge/operations/SimplePersonaInfos$SimplePersonaInfo;
.super Ljava/lang/Object;
.source "SimplePersonaInfos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/operations/SimplePersonaInfos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimplePersonaInfo"
.end annotation


# instance fields
.field public id:I

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/bridge/operations/SimplePersonaInfos;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/bridge/operations/SimplePersonaInfos;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 161
    iput-object p1, p0, this$0:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v0, 0x0

    iput v0, p0, id:I

    .line 163
    iput-object v1, p0, name:Ljava/lang/String;

    .line 164
    iput-object v1, p0, type:Ljava/lang/String;

    return-void
.end method
