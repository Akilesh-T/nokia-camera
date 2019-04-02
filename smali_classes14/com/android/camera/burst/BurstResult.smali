.class public interface abstract Lcom/android/camera/burst/BurstResult;
.super Ljava/lang/Object;
.source "BurstResult.java"


# virtual methods
.method public abstract getArtifacts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/burst/BurstArtifact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getArtifactsByType(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/burst/BurstArtifact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTypes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
