.class public abstract Lcom/drew/metadata/tiff/DirectoryTiffHandler;
.super Ljava/lang/Object;
.source "DirectoryTiffHandler.java"

# interfaces
.implements Lcom/drew/imaging/tiff/TiffHandler;


# instance fields
.field protected _currentDirectory:Lcom/drew/metadata/Directory;

.field private final _directoryStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/drew/metadata/Directory;",
            ">;"
        }
    .end annotation
.end field

.field protected final _metadata:Lcom/drew/metadata/Metadata;


# direct methods
.method protected constructor <init>(Lcom/drew/metadata/Metadata;)V
    .locals 1
    .param p1, "metadata"    # Lcom/drew/metadata/Metadata;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_directoryStack:Ljava/util/Stack;

    .line 47
    iput-object p1, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    .line 48
    return-void
.end method

.method private getCurrentOrErrorDirectory()Lcom/drew/metadata/Directory;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .prologue
    .line 93
    iget-object v1, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    if-eqz v1, :cond_1

    .line 94
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    .line 99
    :cond_0
    :goto_0
    return-object v0

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    const-class v2, Lcom/drew/metadata/ErrorDirectory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Metadata;->getFirstDirectoryOfType(Ljava/lang/Class;)Lcom/drew/metadata/Directory;

    move-result-object v0

    check-cast v0, Lcom/drew/metadata/ErrorDirectory;

    .line 96
    .local v0, "error":Lcom/drew/metadata/ErrorDirectory;
    if-nez v0, :cond_0

    .line 98
    const-class v1, Lcom/drew/metadata/ErrorDirectory;

    invoke-virtual {p0, v1}, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->pushDirectory(Ljava/lang/Class;)V

    .line 99
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    goto :goto_0
.end method


# virtual methods
.method public endingIFD()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_directoryStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    .line 53
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_directoryStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/drew/metadata/Directory;

    goto :goto_0
.end method

.method public error(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->getCurrentOrErrorDirectory()Lcom/drew/metadata/Directory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method protected pushDirectory(Ljava/lang/Class;)V
    .locals 4
    .param p1    # Ljava/lang/Class;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/drew/metadata/Directory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "directoryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/drew/metadata/Directory;>;"
    const/4 v1, 0x0

    .line 60
    .local v1, "newDirectory":Lcom/drew/metadata/Directory;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "newDirectory":Lcom/drew/metadata/Directory;
    check-cast v1, Lcom/drew/metadata/Directory;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    .restart local v1    # "newDirectory":Lcom/drew/metadata/Directory;
    if-eqz v1, :cond_1

    .line 70
    iget-object v2, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    if-eqz v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_directoryStack:Ljava/util/Stack;

    iget-object v3, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v2, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v1, v2}, Lcom/drew/metadata/Directory;->setParent(Lcom/drew/metadata/Directory;)V

    .line 75
    :cond_0
    iput-object v1, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    .line 76
    iget-object v2, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_metadata:Lcom/drew/metadata/Metadata;

    iget-object v3, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v2, v3}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    .line 78
    :cond_1
    return-void

    .line 61
    .end local v1    # "newDirectory":Lcom/drew/metadata/Directory;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 63
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setByteArray(I[B)V
    .locals 1
    .param p1, "tagId"    # I
    .param p2, "bytes"    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 104
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setByteArray(I[B)V

    .line 105
    return-void
.end method

.method public setDouble(ID)V
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "double64"    # D

    .prologue
    .line 134
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/drew/metadata/Directory;->setDouble(ID)V

    .line 135
    return-void
.end method

.method public setDoubleArray(I[D)V
    .locals 1
    .param p1, "tagId"    # I
    .param p2, "array"    # [D
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 139
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setDoubleArray(I[D)V

    .line 140
    return-void
.end method

.method public setFloat(IF)V
    .locals 1
    .param p1, "tagId"    # I
    .param p2, "float32"    # F

    .prologue
    .line 124
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setFloat(IF)V

    .line 125
    return-void
.end method

.method public setFloatArray(I[F)V
    .locals 1
    .param p1, "tagId"    # I
    .param p2, "array"    # [F
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 129
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setFloatArray(I[F)V

    .line 130
    return-void
.end method

.method public setInt16s(II)V
    .locals 1
    .param p1, "tagId"    # I
    .param p2, "int16s"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setInt(II)V

    .line 170
    return-void
.end method

.method public setInt16sArray(I[S)V
    .locals 1
    .param p1, "tagId"    # I
    .param p2, "array"    # [S
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 175
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    .line 176
    return-void
.end method

.method public setInt16u(II)V
    .locals 1
    .param p1, "tagId"    # I
    .param p2, "int16u"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setInt(II)V

    .line 182
    return-void
.end method

.method public setInt16uArray(I[I)V
    .locals 1
    .param p1, "tagId"    # I
    .param p2, "array"    # [I
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 187
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    .line 188
    return-void
.end method

.method public setInt32s(II)V
    .locals 1
    .param p1, "tagId"    # I
    .param p2, "int32s"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setInt(II)V

    .line 193
    return-void
.end method

.method public setInt32sArray(I[I)V
    .locals 1
    .param p1, "tagId"    # I
    .param p2, "array"    # [I
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 197
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setIntArray(I[I)V

    .line 198
    return-void
.end method

.method public setInt32u(IJ)V
    .locals 2
    .param p1, "tagId"    # I
    .param p2, "int32u"    # J

    .prologue
    .line 202
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/drew/metadata/Directory;->setLong(IJ)V

    .line 203
    return-void
.end method

.method public setInt32uArray(I[J)V
    .locals 1
    .param p1, "tagId"    # I
    .param p2, "array"    # [J
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 208
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    .line 209
    return-void
.end method

.method public setInt8s(IB)V
    .locals 1
    .param p1, "tagId"    # I
    .param p2, "int8s"    # B

    .prologue
    .line 145
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setInt(II)V

    .line 146
    return-void
.end method

.method public setInt8sArray(I[B)V
    .locals 1
    .param p1, "tagId"    # I
    .param p2, "array"    # [B
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 151
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setByteArray(I[B)V

    .line 152
    return-void
.end method

.method public setInt8u(IS)V
    .locals 1
    .param p1, "tagId"    # I
    .param p2, "int8u"    # S

    .prologue
    .line 157
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setInt(II)V

    .line 158
    return-void
.end method

.method public setInt8uArray(I[S)V
    .locals 1
    .param p1, "tagId"    # I
    .param p2, "array"    # [S
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 163
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setObjectArray(ILjava/lang/Object;)V

    .line 164
    return-void
.end method

.method public setRational(ILcom/drew/lang/Rational;)V
    .locals 1
    .param p1, "tagId"    # I
    .param p2, "rational"    # Lcom/drew/lang/Rational;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 114
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setRational(ILcom/drew/lang/Rational;)V

    .line 115
    return-void
.end method

.method public setRationalArray(I[Lcom/drew/lang/Rational;)V
    .locals 1
    .param p1, "tagId"    # I
    .param p2, "array"    # [Lcom/drew/lang/Rational;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 119
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setRationalArray(I[Lcom/drew/lang/Rational;)V

    .line 120
    return-void
.end method

.method public setString(ILcom/drew/metadata/StringValue;)V
    .locals 1
    .param p1, "tagId"    # I
    .param p2, "string"    # Lcom/drew/metadata/StringValue;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 109
    iget-object v0, p0, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->_currentDirectory:Lcom/drew/metadata/Directory;

    invoke-virtual {v0, p1, p2}, Lcom/drew/metadata/Directory;->setStringValue(ILcom/drew/metadata/StringValue;)V

    .line 110
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/drew/metadata/tiff/DirectoryTiffHandler;->getCurrentOrErrorDirectory()Lcom/drew/metadata/Directory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/drew/metadata/Directory;->addError(Ljava/lang/String;)V

    .line 83
    return-void
.end method
