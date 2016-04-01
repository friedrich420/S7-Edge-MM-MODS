.class public Lcom/ipsec/client/IPsecLogReader;
.super Ljava/io/BufferedReader;
.source "IPsecLogReader.java"


# direct methods
.method protected constructor <init>(Ljava/io/Reader;)V
    .registers 2
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 24
    return-void
.end method

.method protected constructor <init>(Ljava/io/Reader;I)V
    .registers 3
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "size"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 29
    return-void
.end method
