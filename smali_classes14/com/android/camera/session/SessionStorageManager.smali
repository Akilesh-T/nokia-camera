.class public interface abstract Lcom/android/camera/session/SessionStorageManager;
.super Ljava/lang/Object;
.source "SessionStorageManager.java"


# virtual methods
.method public abstract createTemporaryOutputPath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getSessionDirectory(Ljava/lang/String;)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
