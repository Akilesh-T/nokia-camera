.class public interface abstract Lcom/android/camera/burst/BurstArtifact;
.super Ljava/lang/Object;
.source "BurstArtifact.java"


# virtual methods
.method public abstract getLocalizedName()Ljava/lang/String;
.end method

.method public abstract getMediaItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/burst/BurstMediaItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getType()Ljava/lang/String;
.end method
