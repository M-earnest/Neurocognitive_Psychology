
## Building the model 
from sklearn.linear_model import LogisticRegression
def custom_pipeline(X, y, group):
    for i, (train_index, test_index) in enumerate(skf.split(X, y[:,group])):
        x_train = X[train_index]
        x_test = X[test_index]
        y_train = y[train_index, 0]
        y_test = y[test_index, 0]

        x_train = scalar.fit_transform(x_train)

        clf = LogisticRegression(C=0.1, random_state=0)
        clf.fit(x_train, y_train)
        y_pred[test_index] = clf.predict(scalar.transform(x_test))
        score_test = clf.score(scalar.transform(x_test),y_test)
        score_train = clf.score(x_train,y_train)
    
    return y_pred, y_train, y_test, x_train, x_test, score_test, score_train


## Heatmap
cm_group = confusion_matrix(y_test_asd, y_asd[155:310])
cm_sex = confusion_matrix(y_test_sex, y_sex[155:310])
cm_all = confusion_matrix(y_pred, y[:,0])

figure, axes = plt.subplots(1, 3, figsize=(17,7))

sns.heatmap(cm_group, annot = True, ax=axes[0]).set(title='Heatmap for Group predictions', ylabel='True Score', xlabel='Predicted Score');
sns.heatmap(cm_sex, annot = True, ax=axes[1]).set(title='Heatmap for sex predictions', ylabel='True Score', xlabel='Predicted Score');
sns.heatmap(cm_all, annot = True, ax=axes[2]).set(title='Heatmap for all predictions', ylabel='True Score', xlabel='Predicted Score');

figure.suptitle('Confusion Matrix for predictions');


