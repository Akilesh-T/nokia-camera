.class public Lcom/drew/metadata/gif/GifControlDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "GifControlDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/gif/GifControlDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/gif/GifControlDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/gif/GifControlDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 36
    return-void
.end method
