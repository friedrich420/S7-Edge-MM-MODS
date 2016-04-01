.class Lcom/android/server/pm/CrossProfileIntentFilter;
.super Landroid/content/IntentFilter;
.source "CrossProfileIntentFilter.java"


# static fields
.field private static final ATTR_FILTER:Ljava/lang/String; = "filter"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_OWNER_PACKAGE:Ljava/lang/String; = "ownerPackage"

.field private static final ATTR_TARGET_USER_ID:Ljava/lang/String; = "targetUserId"

.field private static final TAG:Ljava/lang/String; = "CrossProfileIntentFilter"


# instance fields
.field final mFlags:I

.field final mOwnerPackage:Ljava/lang/String;

.field final mTargetUserId:I


# direct methods
.method constructor <init>(Landroid/content/IntentFilter;Ljava/lang/String;II)V
    .registers 5
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "ownerPackage"    # Ljava/lang/String;
    .param p3, "targetUserId"    # I
    .param p4, "flags"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 49
    iput p3, p0, mTargetUserId:I

    .line 50
    iput-object p2, p0, mOwnerPackage:Ljava/lang/String;

    .line 51
    iput p4, p0, mFlags:I

    .line 52
    return-void
.end method

.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 66
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 67
    const-string/jumbo v4, "targetUserId"

    const/16 v5, -0x2710

    invoke-virtual {p0, p1, v4, v5}, getIntFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, mTargetUserId:I

    .line 68
    const-string/jumbo v4, "ownerPackage"

    const-string v5, ""

    invoke-virtual {p0, p1, v4, v5}, getStringFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, mOwnerPackage:Ljava/lang/String;

    .line 69
    const-string/jumbo v4, "flags"

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v4, v5}, getIntFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, mFlags:I

    .line 71
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 72
    .local v1, "outerDepth":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "tagName":Ljava/lang/String;
    :cond_2d
    :goto_2d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_51

    if-ne v3, v6, :cond_3c

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_51

    .line 76
    :cond_3c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 77
    if-eq v3, v6, :cond_2d

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2d

    .line 79
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2d

    .line 80
    const-string/jumbo v4, "filter"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 91
    :cond_51
    const-string/jumbo v4, "filter"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 92
    invoke-virtual {p0, p1}, readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 99
    :goto_5d
    return-void

    .line 83
    :cond_5e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under crossProfile-intent-filters: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 87
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2d

    .line 94
    .end local v0    # "msg":Ljava/lang/String;
    :cond_86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing element under CrossProfileIntentFilter: filter at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .restart local v0    # "msg":Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 97
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5d
.end method


# virtual methods
.method equalsIgnoreFilter(Lcom/android/server/pm/CrossProfileIntentFilter;)Z
    .registers 4
    .param p1, "other"    # Lcom/android/server/pm/CrossProfileIntentFilter;

    .prologue
    .line 142
    iget v0, p0, mTargetUserId:I

    iget v1, p1, mTargetUserId:I

    if-ne v0, v1, :cond_18

    iget-object v0, p0, mOwnerPackage:Ljava/lang/String;

    iget-object v1, p1, mOwnerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, mFlags:I

    iget v1, p1, mFlags:I

    if-ne v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public getFlags()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, mFlags:I

    return v0
.end method

.method getIntFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, getStringFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "stringValue":Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 118
    :try_start_7
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_a} :catch_c

    move-result p3

    .line 123
    .end local p3    # "defaultValue":I
    :cond_b
    return p3

    .line 119
    .restart local p3    # "defaultValue":I
    :catch_c
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getOwnerPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, mOwnerPackage:Ljava/lang/String;

    return-object v0
.end method

.method getStringFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v2, 0x0

    invoke-interface {p1, v2, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_2d

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing element under CrossProfileIntentFilter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "msg":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 109
    .end local v0    # "msg":Ljava/lang/String;
    .end local p3    # "defaultValue":Ljava/lang/String;
    :goto_2c
    return-object p3

    .restart local p3    # "defaultValue":Ljava/lang/String;
    :cond_2d
    move-object p3, v1

    goto :goto_2c
.end method

.method public getTargetUserId()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, mTargetUserId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CrossProfileIntentFilter{0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mTargetUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 127
    const-string/jumbo v0, "targetUserId"

    iget v1, p0, mTargetUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    const-string/jumbo v0, "flags"

    iget v1, p0, mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 129
    const-string/jumbo v0, "ownerPackage"

    iget-object v1, p0, mOwnerPackage:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 130
    const-string/jumbo v0, "filter"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 131
    invoke-super {p0, p1}, Landroid/content/IntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 132
    const-string/jumbo v0, "filter"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    return-void
.end method
