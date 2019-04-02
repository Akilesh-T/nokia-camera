.class public final Lcom/drew/metadata/ErrorDirectory;
.super Lcom/drew/metadata/Directory;
.source "ErrorDirectory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    .line 40
    invoke-super {p0, p1}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .prologue
    .line 47
    const-string v0, "Error"

    return-object v0
.end method

.method public getTagName(I)Ljava/lang/String;
    .locals 1
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .prologue
    .line 61
    const-string v0, ""

    return-object v0
.end method

.method protected getTagNameMap()Ljava/util/HashMap;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public hasTagName(I)Z
    .locals 1
    .param p1, "tagType"    # I

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public setObject(ILjava/lang/Object;)V
    .locals 5
    .param p1, "tagType"    # I
    .param p2, "value"    # Ljava/lang/Object;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot add value to %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/drew/metadata/ErrorDirectory;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
