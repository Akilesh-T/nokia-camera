.class public Lcom/drew/metadata/exif/PrintIMDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "PrintIMDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/exif/PrintIMDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/PrintIMDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/exif/PrintIMDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 4
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 48
    packed-switch p1, :pswitch_data_0

    .line 52
    iget-object v1, p0, Lcom/drew/metadata/exif/PrintIMDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/PrintIMDirectory;

    invoke-virtual {v1, p1}, Lcom/drew/metadata/exif/PrintIMDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 53
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 54
    const/4 v1, 0x0

    .line 55
    .end local v0    # "value":Ljava/lang/Integer;
    :goto_0
    return-object v1

    .line 50
    :pswitch_0
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 55
    .restart local v0    # "value":Ljava/lang/Integer;
    :cond_0
    const-string v1, "0x%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
