//
// RelationshipsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class RelationshipsAPI {

    /**
     Fetch Relationships
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func usersRelationshipsGet(apiResponseQueue: DispatchQueue = RevoltAPIClient.apiResponseQueue, completion: @escaping ((_ data: [UserRelationshipModel]?, _ error: Error?) -> Void)) {
        usersRelationshipsGetWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Fetch Relationships
     - GET /users/relationships
     - Fetch all of your relationships with other users.
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - returns: RequestBuilder<[AnyCodableModel]> 
     */
    open class func usersRelationshipsGetWithRequestBuilder() -> RequestBuilder<[UserRelationshipModel]> {
        let localVariablePath = "/users/relationships"
        let localVariableURLString = RevoltAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[UserRelationshipModel]>.Type = RevoltAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Unblock User
     
     - parameter user: (path) User ID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func usersUserBlockDelete(user: UserIDModel, apiResponseQueue: DispatchQueue = RevoltAPIClient.apiResponseQueue, completion: @escaping ((_ data: UserRelationshipType?, _ error: Error?) -> Void)) {
        usersUserBlockDeleteWithRequestBuilder(user: user).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Unblock User
     - DELETE /users/:user/block
     - Unblock another user.
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter user: (path) User ID 
     - returns: RequestBuilder<UserRelationshipType>
     */
    open class func usersUserBlockDeleteWithRequestBuilder(user: UserIDModel) -> RequestBuilder<UserRelationshipType> {
        var localVariablePath = "/users/:user/block"
        let userPreEscape = "\(APIHelper.mapValueToPathItem(user))"
        let userPostEscape = userPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{user}", with: userPostEscape, options: .literal, range: nil)
        let localVariableURLString = RevoltAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserRelationshipType>.Type = RevoltAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Block User
     
     - parameter user: (path) User ID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func usersUserBlockPut(user: UserIDModel, apiResponseQueue: DispatchQueue = RevoltAPIClient.apiResponseQueue, completion: @escaping ((_ data: UserRelationshipType?, _ error: Error?) -> Void)) {
        usersUserBlockPutWithRequestBuilder(user: user).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Block User
     - PUT /users/:user/block
     - Block another user.
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter user: (path) User ID 
     - returns: RequestBuilder<UserRelationshipType>
     */
    open class func usersUserBlockPutWithRequestBuilder(user: UserIDModel) -> RequestBuilder<UserRelationshipType> {
        var localVariablePath = "/users/:user/block"
        let userPreEscape = "\(APIHelper.mapValueToPathItem(user))"
        let userPostEscape = userPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{user}", with: userPostEscape, options: .literal, range: nil)
        let localVariableURLString = RevoltAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserRelationshipType>.Type = RevoltAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Fetch Relationship
     
     - parameter user: (path) User ID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func usersUserRelationshipGet(user: UserIDModel, apiResponseQueue: DispatchQueue = RevoltAPIClient.apiResponseQueue, completion: @escaping ((_ data: UserNoIDRelationshipModel?, _ error: Error?) -> Void)) {
        usersUserRelationshipGetWithRequestBuilder(user: user).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Fetch Relationship
     - GET /users/:user/relationship
     - Fetch your relationship with another other user.
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter user: (path) User ID 
     - returns: RequestBuilder<RUserRelationshipType>
     */
    open class func usersUserRelationshipGetWithRequestBuilder(user: UserIDModel) -> RequestBuilder<UserNoIDRelationshipModel> {
        var localVariablePath = "/users/:user/relationship"
        let userPreEscape = "\(APIHelper.mapValueToPathItem(user))"
        let userPostEscape = userPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{user}", with: userPostEscape, options: .literal, range: nil)
        let localVariableURLString = RevoltAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserNoIDRelationshipModel>.Type = RevoltAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Deny Friend Request / Remove Friend
     
     - parameter username: (path) Username 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func usersUsernameFriendDelete(username: UserUsernameModel, apiResponseQueue: DispatchQueue = RevoltAPIClient.apiResponseQueue, completion: @escaping ((_ data: UserRelationshipType?, _ error: Error?) -> Void)) {
        usersUsernameFriendDeleteWithRequestBuilder(username: username).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Deny Friend Request / Remove Friend
     - DELETE /users/:username/friend
     - Denies another user's friend request or removes an existing friend.
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter username: (path) Username 
     - returns: RequestBuilder<UserRelationshipType>
     */
    open class func usersUsernameFriendDeleteWithRequestBuilder(username: UserUsernameModel) -> RequestBuilder<UserRelationshipType> {
        var localVariablePath = "/users/:username/friend"
        let usernamePreEscape = "\(APIHelper.mapValueToPathItem(username))"
        let usernamePostEscape = usernamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{username}", with: usernamePostEscape, options: .literal, range: nil)
        let localVariableURLString = RevoltAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserRelationshipType>.Type = RevoltAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Send Friend Request / Accept Request
     
     - parameter username: (path) Username 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func usersUsernameFriendPut(username: UserUsernameModel, apiResponseQueue: DispatchQueue = RevoltAPIClient.apiResponseQueue, completion: @escaping ((_ data: UserRelationshipType?, _ error: Error?) -> Void)) {
        usersUsernameFriendPutWithRequestBuilder(username: username).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Send Friend Request / Accept Request
     - PUT /users/:username/friend
     - Send a friend request to another user or accept another user's friend request.
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter username: (path) Username 
     - returns: RequestBuilder<UserRelationshipType>
     */
    open class func usersUsernameFriendPutWithRequestBuilder(username: UserUsernameModel) -> RequestBuilder<UserRelationshipType> {
        var localVariablePath = "/users/:username/friend"
        let usernamePreEscape = "\(APIHelper.mapValueToPathItem(username))"
        let usernamePostEscape = usernamePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{username}", with: usernamePostEscape, options: .literal, range: nil)
        let localVariableURLString = RevoltAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<UserRelationshipType>.Type = RevoltAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
