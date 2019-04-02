.class public interface abstract Lcom/android/camera/widget/Preloader$ItemSource;
.super Ljava/lang/Object;
.source "Preloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/Preloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ItemSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getItemsInRange(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method
