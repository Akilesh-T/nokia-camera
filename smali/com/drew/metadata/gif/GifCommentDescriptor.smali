.class public Lcom/drew/metadata/gif/GifCommentDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "GifCommentDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/gif/GifCommentDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/gif/GifCommentDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/gif/GifCommentDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 36
    return-void
.end method
