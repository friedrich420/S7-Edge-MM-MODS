.class public abstract Landroid/webkit/WebBackForwardList;
.super Ljava/lang/Object;
.source "WebBackForwardList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract clone()Landroid/webkit/WebBackForwardList;
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, clone()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCurrentIndex()I
.end method

.method public abstract getCurrentItem()Landroid/webkit/WebHistoryItem;
.end method

.method public abstract getItemAtIndex(I)Landroid/webkit/WebHistoryItem;
.end method

.method public abstract getSize()I
.end method
