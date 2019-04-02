.class public Lcom/android/camera/captureintent/event/EventRecordTimeUpdate;
.super Ljava/lang/Object;
.source "EventRecordTimeUpdate.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/Event;


# instance fields
.field private final mRecordTimeText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "recordTimeText"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/camera/captureintent/event/EventRecordTimeUpdate;->mRecordTimeText:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getRecordTimeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/captureintent/event/EventRecordTimeUpdate;->mRecordTimeText:Ljava/lang/String;

    return-object v0
.end method
