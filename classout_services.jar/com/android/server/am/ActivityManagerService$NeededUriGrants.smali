.class Lcom/android/server/am/ActivityManagerService$NeededUriGrants;
.super Ljava/util/ArrayList;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NeededUriGrants"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/am/ActivityManagerService$GrantUri;",
        ">;"
    }
.end annotation


# instance fields
.field final flags:I

.field final targetPkg:Ljava/lang/String;

.field final targetUid:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "targetPkg"    # Ljava/lang/String;
    .param p2, "targetUid"    # I
    .param p3, "flags"    # I

    .prologue
    .line 11716
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 11717
    iput-object p1, p0, targetPkg:Ljava/lang/String;

    .line 11718
    iput p2, p0, targetUid:I

    .line 11719
    iput p3, p0, flags:I

    .line 11720
    return-void
.end method
