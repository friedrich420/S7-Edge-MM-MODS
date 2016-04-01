.class public abstract Landroid/security/keystore/KeyProperties$Origin;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Origin"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromKeymaster(I)I
    .registers 4
    .param p0, "origin"    # I

    .prologue
    .line 682
    packed-switch p0, :pswitch_data_22

    .line 690
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown origin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 684
    :pswitch_1c
    const/4 v0, 0x1

    .line 688
    :goto_1d
    return v0

    .line 686
    :pswitch_1e
    const/4 v0, 0x2

    goto :goto_1d

    .line 688
    :pswitch_20
    const/4 v0, 0x4

    goto :goto_1d

    .line 682
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_3
        :pswitch_1e
        :pswitch_20
    .end packed-switch
.end method
