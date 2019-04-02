.class public abstract Lcom/google/api/client/googleapis/notifications/json/gson/GsonNotificationCallback;
.super Lcom/google/api/client/googleapis/notifications/json/JsonNotificationCallback;
.source "GsonNotificationCallback.java"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/client/googleapis/notifications/json/JsonNotificationCallback",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    .local p0, "this":Lcom/google/api/client/googleapis/notifications/json/gson/GsonNotificationCallback;, "Lcom/google/api/client/googleapis/notifications/json/gson/GsonNotificationCallback<TT;>;"
    invoke-direct {p0}, Lcom/google/api/client/googleapis/notifications/json/JsonNotificationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lcom/google/api/client/googleapis/notifications/json/gson/GsonNotificationCallback;, "Lcom/google/api/client/googleapis/notifications/json/gson/GsonNotificationCallback<TT;>;"
    invoke-static {}, Lcom/google/api/client/json/gson/GsonFactory;->getDefaultInstance()Lcom/google/api/client/json/gson/GsonFactory;

    move-result-object v0

    return-object v0
.end method
