.class public interface abstract Lcom/github/faucamp/simplertmp/amf/AmfData;
.super Ljava/lang/Object;
.source "AmfData.java"


# virtual methods
.method public abstract getSize()I
.end method

.method public abstract readFrom(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
